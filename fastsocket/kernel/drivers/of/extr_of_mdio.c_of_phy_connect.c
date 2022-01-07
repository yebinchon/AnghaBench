
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
typedef int phy_interface_t ;


 struct phy_device* of_phy_find_device (struct device_node*) ;
 scalar_t__ phy_connect_direct (struct net_device*,struct phy_device*,void (*) (struct net_device*),int ,int ) ;

struct phy_device *of_phy_connect(struct net_device *dev,
      struct device_node *phy_np,
      void (*hndlr)(struct net_device *), u32 flags,
      phy_interface_t iface)
{
 struct phy_device *phy = of_phy_find_device(phy_np);

 if (!phy)
  return ((void*)0);

 return phy_connect_direct(dev, phy, hndlr, flags, iface) ? ((void*)0) : phy;
}
