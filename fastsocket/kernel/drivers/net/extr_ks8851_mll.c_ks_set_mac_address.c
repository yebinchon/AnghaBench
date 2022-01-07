
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr {int sa_data; } ;
struct net_device {scalar_t__ dev_addr; int addr_len; } ;
struct ks_net {int dummy; } ;


 int ks_set_mac (struct ks_net*,int *) ;
 int memcpy (scalar_t__,int ,int ) ;
 struct ks_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_set_mac_address(struct net_device *netdev, void *paddr)
{
 struct ks_net *ks = netdev_priv(netdev);
 struct sockaddr *addr = paddr;
 u8 *da;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);

 da = (u8 *)netdev->dev_addr;

 ks_set_mac(ks, da);
 return 0;
}
