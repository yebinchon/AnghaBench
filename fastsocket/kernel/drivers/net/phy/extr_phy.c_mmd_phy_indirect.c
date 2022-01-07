
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int (* write ) (struct mii_bus*,int,int ,int) ;} ;


 int MII_MMD_CTRL ;
 int MII_MMD_CTRL_NOINCR ;
 int MII_MMD_DATA ;
 int stub1 (struct mii_bus*,int,int ,int) ;
 int stub2 (struct mii_bus*,int,int ,int) ;
 int stub3 (struct mii_bus*,int,int ,int) ;

__attribute__((used)) static inline void mmd_phy_indirect(struct mii_bus *bus, int prtad, int devad,
        int addr)
{

 bus->write(bus, addr, MII_MMD_CTRL, devad);


 bus->write(bus, addr, MII_MMD_DATA, prtad);


 bus->write(bus, addr, MII_MMD_CTRL, (devad | MII_MMD_CTRL_NOINCR));
}
