
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_info {int viid; TYPE_1__* adapter; } ;
struct net_device {int flags; } ;
struct TYPE_2__ {int fn; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 struct port_info* netdev_priv (struct net_device*) ;
 int set_addr_filters (struct net_device*,int) ;
 int t4_set_rxmode (TYPE_1__*,int ,int ,int,int,int,int,int,int) ;

__attribute__((used)) static int set_rxmode(struct net_device *dev, int mtu, bool sleep_ok)
{
 int ret;
 struct port_info *pi = netdev_priv(dev);

 ret = set_addr_filters(dev, sleep_ok);
 if (ret == 0)
  ret = t4_set_rxmode(pi->adapter, pi->adapter->fn, pi->viid, mtu,
        (dev->flags & IFF_PROMISC) ? 1 : 0,
        (dev->flags & IFF_ALLMULTI) ? 1 : 0, 1, -1,
        sleep_ok);
 return ret;
}
