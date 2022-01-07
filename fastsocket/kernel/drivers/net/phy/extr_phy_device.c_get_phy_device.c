
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;
struct mii_bus {int dummy; } ;


 struct phy_device* ERR_PTR (int) ;
 int get_phy_id (struct mii_bus*,int,int*) ;
 struct phy_device* phy_device_create (struct mii_bus*,int,int) ;

struct phy_device * get_phy_device(struct mii_bus *bus, int addr)
{
 struct phy_device *dev = ((void*)0);
 u32 phy_id;
 int r;

 r = get_phy_id(bus, addr, &phy_id);
 if (r)
  return ERR_PTR(r);


 if ((phy_id & 0x1fffffff) == 0x1fffffff)
  return ((void*)0);

 dev = phy_device_create(bus, addr, phy_id);

 return dev;
}
