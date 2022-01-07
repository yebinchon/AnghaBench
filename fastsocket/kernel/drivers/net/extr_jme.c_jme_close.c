
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {scalar_t__ phylink; int rxempty_task; int rxclean_task; int txclean_task; int linkch_task; } ;


 int JME_NAPI_DISABLE (struct jme_adapter*) ;
 int jme_disable_rx_engine (struct jme_adapter*) ;
 int jme_disable_tx_engine (struct jme_adapter*) ;
 int jme_free_irq (struct jme_adapter*) ;
 int jme_free_rx_resources (struct jme_adapter*) ;
 int jme_free_tx_resources (struct jme_adapter*) ;
 int jme_phy_off (struct jme_adapter*) ;
 int jme_reset_ghc_speed (struct jme_adapter*) ;
 int jme_reset_mac_processor (struct jme_adapter*) ;
 int jme_stop_irq (struct jme_adapter*) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int tasklet_disable (int *) ;

__attribute__((used)) static int
jme_close(struct net_device *netdev)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 netif_stop_queue(netdev);
 netif_carrier_off(netdev);

 jme_stop_irq(jme);
 jme_free_irq(jme);

 JME_NAPI_DISABLE(jme);

 tasklet_disable(&jme->linkch_task);
 tasklet_disable(&jme->txclean_task);
 tasklet_disable(&jme->rxclean_task);
 tasklet_disable(&jme->rxempty_task);

 jme_reset_ghc_speed(jme);
 jme_disable_rx_engine(jme);
 jme_disable_tx_engine(jme);
 jme_reset_mac_processor(jme);
 jme_free_rx_resources(jme);
 jme_free_tx_resources(jme);
 jme->phylink = 0;
 jme_phy_off(jme);

 return 0;
}
