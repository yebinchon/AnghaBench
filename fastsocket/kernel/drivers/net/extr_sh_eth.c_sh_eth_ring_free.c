
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {scalar_t__* tx_skbuff; scalar_t__* rx_skbuff; } ;
struct net_device {int dummy; } ;


 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int dev_kfree_skb (scalar_t__) ;
 int kfree (scalar_t__*) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void sh_eth_ring_free(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int i;


 if (mdp->rx_skbuff) {
  for (i = 0; i < RX_RING_SIZE; i++) {
   if (mdp->rx_skbuff[i])
    dev_kfree_skb(mdp->rx_skbuff[i]);
  }
 }
 kfree(mdp->rx_skbuff);


 if (mdp->tx_skbuff) {
  for (i = 0; i < TX_RING_SIZE; i++) {
   if (mdp->tx_skbuff[i])
    dev_kfree_skb(mdp->tx_skbuff[i]);
  }
 }
 kfree(mdp->tx_skbuff);
}
