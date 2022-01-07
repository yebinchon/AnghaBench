
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip {int dummy; } ;
struct net_device {int mtu; } ;


 int EINVAL ;
 struct slip* netdev_priv (struct net_device*) ;
 int sl_realloc_bufs (struct slip*,int) ;

__attribute__((used)) static int sl_change_mtu(struct net_device *dev, int new_mtu)
{
 struct slip *sl = netdev_priv(dev);

 if (new_mtu < 68 || new_mtu > 65534)
  return -EINVAL;

 if (new_mtu != dev->mtu)
  return sl_realloc_bufs(sl, new_mtu);
 return 0;
}
