
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {scalar_t__ sin_family; } ;
struct net_device {int dummy; } ;
struct dst_entry {int dev; } ;
struct cnic_dev {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int ENETUNREACH ;
 struct cnic_dev* cnic_from_netdev (struct net_device*) ;
 int cnic_get_v4_route (struct sockaddr_in*,struct dst_entry**) ;
 int cnic_get_v6_route (struct sockaddr_in6*,struct dst_entry**) ;
 int cnic_get_vlan (int ,struct net_device**) ;
 int cnic_put (struct cnic_dev*) ;
 int dst_release (struct dst_entry*) ;

__attribute__((used)) static struct cnic_dev *cnic_cm_select_dev(struct sockaddr_in *dst_addr,
        int ulp_type)
{
 struct cnic_dev *dev = ((void*)0);
 struct dst_entry *dst;
 struct net_device *netdev = ((void*)0);
 int err = -ENETUNREACH;

 if (dst_addr->sin_family == AF_INET)
  err = cnic_get_v4_route(dst_addr, &dst);
 else if (dst_addr->sin_family == AF_INET6) {
  struct sockaddr_in6 *dst_addr6 =
   (struct sockaddr_in6 *) dst_addr;

  err = cnic_get_v6_route(dst_addr6, &dst);
 } else
  return ((void*)0);

 if (err)
  return ((void*)0);

 if (!dst->dev)
  goto done;

 cnic_get_vlan(dst->dev, &netdev);

 dev = cnic_from_netdev(netdev);

done:
 dst_release(dst);
 if (dev)
  cnic_put(dev);
 return dev;
}
