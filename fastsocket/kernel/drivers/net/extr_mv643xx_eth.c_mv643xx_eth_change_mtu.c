
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int dev; } ;
struct mv643xx_eth_private {int dummy; } ;


 int EINVAL ;
 int KERN_ERR ;
 int dev_printk (int ,int *,char*) ;
 scalar_t__ mv643xx_eth_open (struct net_device*) ;
 int mv643xx_eth_recalc_skb_size (struct mv643xx_eth_private*) ;
 int mv643xx_eth_stop (struct net_device*) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int tx_set_rate (struct mv643xx_eth_private*,int,int) ;

__attribute__((used)) static int mv643xx_eth_change_mtu(struct net_device *dev, int new_mtu)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 if (new_mtu < 64 || new_mtu > 9500)
  return -EINVAL;

 dev->mtu = new_mtu;
 mv643xx_eth_recalc_skb_size(mp);
 tx_set_rate(mp, 1000000000, 16777216);

 if (!netif_running(dev))
  return 0;







 mv643xx_eth_stop(dev);
 if (mv643xx_eth_open(dev)) {
  dev_printk(KERN_ERR, &dev->dev,
      "fatal error on re-opening device after "
      "MTU change\n");
 }

 return 0;
}
