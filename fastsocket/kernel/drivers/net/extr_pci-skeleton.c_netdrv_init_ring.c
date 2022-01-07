
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdrv_private {int * tx_bufs; int ** tx_buf; TYPE_1__* tx_info; int dirty_tx; int cur_tx; scalar_t__ cur_rx; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mapping; int * skb; } ;


 int DPRINTK (char*) ;
 int NUM_TX_DESC ;
 int TX_BUF_SIZE ;
 int atomic_set (int *,int ) ;
 struct netdrv_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void netdrv_init_ring (struct net_device *dev)
{
 struct netdrv_private *tp = netdev_priv(dev);
 int i;

 DPRINTK ("ENTER\n");

 tp->cur_rx = 0;
 atomic_set (&tp->cur_tx, 0);
 atomic_set (&tp->dirty_tx, 0);

 for (i = 0; i < NUM_TX_DESC; i++) {
  tp->tx_info[i].skb = ((void*)0);
  tp->tx_info[i].mapping = 0;
  tp->tx_buf[i] = &tp->tx_bufs[i * TX_BUF_SIZE];
 }

 DPRINTK ("EXIT\n");
}
