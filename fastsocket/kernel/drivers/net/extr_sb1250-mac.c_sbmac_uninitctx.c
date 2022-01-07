
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmac_softc {int sbm_rxdma; int sbm_txdma; } ;


 int sbdma_uninitctx (int *) ;

__attribute__((used)) static void sbmac_uninitctx(struct sbmac_softc *sc)
{
 sbdma_uninitctx(&(sc->sbm_txdma));
 sbdma_uninitctx(&(sc->sbm_rxdma));
}
