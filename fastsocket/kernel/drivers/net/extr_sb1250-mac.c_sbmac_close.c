
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmac_softc {int sbm_rxdma; int sbm_txdma; int mii_bus; int * phy_dev; int napi; } ;
struct net_device {int irq; int name; } ;


 int debug ;
 int free_irq (int ,struct net_device*) ;
 int mdiobus_unregister (int ) ;
 int napi_disable (int *) ;
 struct sbmac_softc* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (int *) ;
 int phy_stop (int *) ;
 int pr_debug (char*,int ) ;
 int sbdma_emptyring (int *) ;
 int sbmac_set_channel_state (struct sbmac_softc*,int ) ;
 int sbmac_state_off ;

__attribute__((used)) static int sbmac_close(struct net_device *dev)
{
 struct sbmac_softc *sc = netdev_priv(dev);

 napi_disable(&sc->napi);

 phy_stop(sc->phy_dev);

 sbmac_set_channel_state(sc, sbmac_state_off);

 netif_stop_queue(dev);

 if (debug > 1)
  pr_debug("%s: Shutting down ethercard\n", dev->name);

 phy_disconnect(sc->phy_dev);
 sc->phy_dev = ((void*)0);

 mdiobus_unregister(sc->mii_bus);

 free_irq(dev->irq, dev);

 sbdma_emptyring(&(sc->sbm_txdma));
 sbdma_emptyring(&(sc->sbm_rxdma));

 return 0;
}
