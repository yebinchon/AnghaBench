
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sgiseeq_private {TYPE_2__* rx_desc; TYPE_1__* tx_desc; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int * skb; } ;
struct TYPE_3__ {int * skb; } ;


 int SEEQ_RX_BUFFERS ;
 int SEEQ_TX_BUFFERS ;
 int dev_kfree_skb (int *) ;
 struct sgiseeq_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void seeq_purge_ring(struct net_device *dev)
{
 struct sgiseeq_private *sp = netdev_priv(dev);
 int i;


 for (i = 0; i < SEEQ_TX_BUFFERS; i++) {
  if (sp->tx_desc[i].skb) {
   dev_kfree_skb(sp->tx_desc[i].skb);
   sp->tx_desc[i].skb = ((void*)0);
  }
 }


 for (i = 0; i < SEEQ_RX_BUFFERS; i++) {
  if (sp->rx_desc[i].skb) {
   dev_kfree_skb(sp->rx_desc[i].skb);
   sp->rx_desc[i].skb = ((void*)0);
  }
 }
}
