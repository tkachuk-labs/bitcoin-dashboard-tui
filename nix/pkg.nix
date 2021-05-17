{ mkDerivation, async, base, brick, bytestring, chronos
, concur-core, concur-replica, containers, envparse, esqueleto
, extra, file-embed, haskell-coinbase-pro, hpack, hspec, hspec-wai
, http-client, http-client-tls, katip, lens, microlens
, monad-logger, persistent, persistent-migration
, persistent-postgresql, persistent-template, replica
, resource-pool, retry, stdenv, stm, template-haskell, text, time
, unbounded-delays, universum, unliftio, vty, wai
, wai-middleware-static-embedded, warp, websockets
}:
mkDerivation {
  pname = "bitcoin-dashboard-tui";
  version = "0.1.0.0";
  src = ./..;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    async base brick bytestring chronos concur-core concur-replica
    containers envparse esqueleto extra file-embed haskell-coinbase-pro
    hspec hspec-wai http-client http-client-tls katip lens microlens
    monad-logger persistent persistent-migration persistent-postgresql
    persistent-template replica resource-pool retry stm
    template-haskell text time unbounded-delays universum unliftio vty
    wai wai-middleware-static-embedded warp websockets
  ];
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [
    async base brick bytestring chronos concur-core concur-replica
    containers envparse esqueleto extra file-embed haskell-coinbase-pro
    http-client http-client-tls katip lens microlens monad-logger
    persistent persistent-migration persistent-postgresql
    persistent-template replica resource-pool retry stm
    template-haskell text time unbounded-delays universum unliftio vty
    wai wai-middleware-static-embedded warp websockets
  ];
  testHaskellDepends = [
    async base brick bytestring chronos concur-core concur-replica
    containers envparse esqueleto extra file-embed haskell-coinbase-pro
    hspec hspec-wai http-client http-client-tls katip lens microlens
    monad-logger persistent persistent-migration persistent-postgresql
    persistent-template replica resource-pool retry stm
    template-haskell text time unbounded-delays universum unliftio vty
    wai wai-middleware-static-embedded warp websockets
  ];
  prePatch = "hpack";
  homepage = "https://github.com/tkachuk-labs/bitcoin-dashboard-tui#readme";
  license = stdenv.lib.licenses.bsd3;
}
