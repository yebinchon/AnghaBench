
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int (* write ) (struct mii_bus*,int,int ,int ) ;} ;


 int MII_MMD_DATA ;
 int mmd_phy_indirect (struct mii_bus*,int,int,int) ;
 int stub1 (struct mii_bus*,int,int ,int ) ;

__attribute__((used)) static void phy_write_mmd_indirect(struct mii_bus *bus, int prtad, int devad,
       int addr, u32 data)
{
 mmd_phy_indirect(bus, prtad, devad, addr);


 bus->write(bus, addr, MII_MMD_DATA, data);
}
