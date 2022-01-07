
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wan_device {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct cycx_x25_channel {scalar_t__ lcn; struct net_device* slave; } ;
typedef scalar_t__ s16 ;


 struct cycx_x25_channel* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device *cycx_x25_get_dev_by_lcn(struct wan_device *wandev,
        s16 lcn)
{
 struct net_device *dev = wandev->dev;
 struct cycx_x25_channel *chan;

 while (dev) {
  chan = netdev_priv(dev);

  if (chan->lcn == lcn)
   break;
  dev = chan->slave;
 }
 return dev;
}
