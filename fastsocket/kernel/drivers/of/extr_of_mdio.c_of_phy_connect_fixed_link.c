
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
typedef int phy_interface_t ;
struct TYPE_3__ {int archdata; } ;


 scalar_t__ IS_ERR (struct phy_device*) ;
 int MII_BUS_ID_SIZE ;
 char* PHY_ID_FMT ;
 struct device_node* dev_archdata_get_node (int *) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 struct phy_device* phy_connect (struct net_device*,char*,void (*) (struct net_device*),int ,int ) ;
 int sprintf (char*,char*,char*,int const) ;

struct phy_device *of_phy_connect_fixed_link(struct net_device *dev,
          void (*hndlr)(struct net_device *),
          phy_interface_t iface)
{
 struct device_node *net_np;
 char bus_id[MII_BUS_ID_SIZE + 3];
 struct phy_device *phy;
 const u32 *phy_id;
 int sz;

 if (!dev->dev.parent)
  return ((void*)0);

 net_np = dev_archdata_get_node(&dev->dev.parent->archdata);
 if (!net_np)
  return ((void*)0);

 phy_id = of_get_property(net_np, "fixed-link", &sz);
 if (!phy_id || sz < sizeof(*phy_id))
  return ((void*)0);

 sprintf(bus_id, PHY_ID_FMT, "0", phy_id[0]);

 phy = phy_connect(dev, bus_id, hndlr, 0, iface);
 return IS_ERR(phy) ? ((void*)0) : phy;
}
