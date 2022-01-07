
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inet6_ifaddr {int addr; } ;
struct inet6_dev {int lock; struct inet6_ifaddr* addr_list; } ;
struct in6_addr {int dummy; } ;


 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int ipv6_addr_copy (struct in6_addr*,int *) ;
 int ipv6_addr_set (struct in6_addr*,int ,int ,int ,int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void bond_glean_dev_ipv6(struct net_device *dev, struct in6_addr *addr)
{
 struct inet6_dev *idev;
 struct inet6_ifaddr *ifa;

 if (!dev)
  return;

 idev = in6_dev_get(dev);
 if (!idev)
  return;

 read_lock_bh(&idev->lock);
 ifa = idev->addr_list;
 if (ifa)
  ipv6_addr_copy(addr, &ifa->addr);
 else
  ipv6_addr_set(addr, 0, 0, 0, 0);

 read_unlock_bh(&idev->lock);

 in6_dev_put(idev);
}
