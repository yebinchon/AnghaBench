
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device (int *,int *,struct device_node*,int ) ;
 int mdio_bus_type ;
 int of_phy_match ;
 struct phy_device* to_phy_device (struct device*) ;

struct phy_device *of_phy_find_device(struct device_node *phy_np)
{
 struct device *d;
 if (!phy_np)
  return ((void*)0);

 d = bus_find_device(&mdio_bus_type, ((void*)0), phy_np, of_phy_match);
 return d ? to_phy_device(d) : ((void*)0);
}
