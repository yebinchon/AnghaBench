
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int (* read ) (struct mii_bus*,int,int ) ;} ;


 int EIO ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 int stub1 (struct mii_bus*,int,int ) ;
 int stub2 (struct mii_bus*,int,int ) ;

int get_phy_id(struct mii_bus *bus, int addr, u32 *phy_id)
{
 int phy_reg;



 phy_reg = bus->read(bus, addr, MII_PHYSID1);

 if (phy_reg < 0)
  return -EIO;

 *phy_id = (phy_reg & 0xffff) << 16;


 phy_reg = bus->read(bus, addr, MII_PHYSID2);

 if (phy_reg < 0)
  return -EIO;

 *phy_id |= (phy_reg & 0xffff);

 return 0;
}
