
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct mv643xx_eth_private {int rx_ring_size; int tx_ring_size; } ;
struct ethtool_ringparam {int rx_pending; int tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;


 int EINVAL ;
 int ENOMEM ;
 int KERN_ERR ;
 int dev_printk (int ,int *,char*) ;
 scalar_t__ mv643xx_eth_open (struct net_device*) ;
 int mv643xx_eth_stop (struct net_device*) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int
mv643xx_eth_set_ringparam(struct net_device *dev, struct ethtool_ringparam *er)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 if (er->rx_mini_pending || er->rx_jumbo_pending)
  return -EINVAL;

 mp->rx_ring_size = er->rx_pending < 4096 ? er->rx_pending : 4096;
 mp->tx_ring_size = er->tx_pending < 4096 ? er->tx_pending : 4096;

 if (netif_running(dev)) {
  mv643xx_eth_stop(dev);
  if (mv643xx_eth_open(dev)) {
   dev_printk(KERN_ERR, &dev->dev,
       "fatal error on re-opening device after "
       "ring param change\n");
   return -ENOMEM;
  }
 }

 return 0;
}
