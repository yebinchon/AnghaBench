
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_assign_type; int addr_len; int dev_addr; } ;
struct enic {int dummy; } ;


 int EADDRNOTAVAIL ;
 int NET_ADDR_RANDOM ;
 scalar_t__ enic_is_dynamic (struct enic*) ;
 scalar_t__ enic_is_sriov_vf (struct enic*) ;
 int is_valid_ether_addr (char*) ;
 int is_zero_ether_addr (char*) ;
 int memcpy (int ,char*,int ) ;
 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enic_set_mac_addr(struct net_device *netdev, char *addr)
{
 struct enic *enic = netdev_priv(netdev);

 if (enic_is_dynamic(enic) || enic_is_sriov_vf(enic)) {
  if (!is_valid_ether_addr(addr) && !is_zero_ether_addr(addr))
   return -EADDRNOTAVAIL;
 } else {
  if (!is_valid_ether_addr(addr))
   return -EADDRNOTAVAIL;
 }

 memcpy(netdev->dev_addr, addr, netdev->addr_len);
 netdev->addr_assign_type &= ~NET_ADDR_RANDOM;

 return 0;
}
