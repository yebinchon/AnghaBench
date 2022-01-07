
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct channel_data {int * tx_skb; TYPE_3__* cosa; TYPE_2__* netdev; } ;
struct TYPE_6__ {int rxtx; } ;
struct TYPE_4__ {int tx_aborted_errors; int tx_errors; int rx_missed_errors; int rx_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int RXBIT ;
 int cosa_kick (TYPE_3__*) ;
 int dev_kfree_skb (int *) ;
 struct channel_data* dev_to_chan (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void cosa_net_timeout(struct net_device *dev)
{
 struct channel_data *chan = dev_to_chan(dev);

 if (test_bit(RXBIT, &chan->cosa->rxtx)) {
  chan->netdev->stats.rx_errors++;
  chan->netdev->stats.rx_missed_errors++;
 } else {
  chan->netdev->stats.tx_errors++;
  chan->netdev->stats.tx_aborted_errors++;
 }
 cosa_kick(chan->cosa);
 if (chan->tx_skb) {
  dev_kfree_skb(chan->tx_skb);
  chan->tx_skb = ((void*)0);
 }
 netif_wake_queue(dev);
}
