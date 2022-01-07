
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int tx_packets; } ;
struct orinoco_private {struct net_device_stats stats; } ;
struct net_device {int dummy; } ;
struct hermes {int dummy; } ;


 int DUMMY_FID ;
 int TXCOMPLFID ;
 int hermes_write_regn (struct hermes*,int ,int ) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void __orinoco_ev_tx(struct net_device *dev, struct hermes *hw)
{
 struct orinoco_private *priv = ndev_priv(dev);
 struct net_device_stats *stats = &priv->stats;

 stats->tx_packets++;

 netif_wake_queue(dev);

 hermes_write_regn(hw, TXCOMPLFID, DUMMY_FID);
}
