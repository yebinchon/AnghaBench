
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct frad_local {int dummy; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 struct frad_local* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int sdla_change_mtu(struct net_device *dev, int new_mtu)
{
 struct frad_local *flp;

 flp = netdev_priv(dev);

 if (netif_running(dev))
  return(-EBUSY);


 return(-EOPNOTSUPP);
}
