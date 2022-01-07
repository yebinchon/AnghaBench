
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct bnx2x_phy {int ver_addr; } ;
struct bnx2x {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_ROM_VER1 ;
 int MDIO_PMA_REG_ROM_VER2 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_save_spirom_version (struct bnx2x*,int ,int ,int ) ;

__attribute__((used)) static void bnx2x_save_bcm_spirom_ver(struct bnx2x *bp,
          struct bnx2x_phy *phy,
          u8 port)
{
 u16 fw_ver1, fw_ver2;

 bnx2x_cl45_read(bp, phy, MDIO_PMA_DEVAD,
   MDIO_PMA_REG_ROM_VER1, &fw_ver1);
 bnx2x_cl45_read(bp, phy, MDIO_PMA_DEVAD,
   MDIO_PMA_REG_ROM_VER2, &fw_ver2);
 bnx2x_save_spirom_version(bp, port, (u32)(fw_ver1<<16 | fw_ver2),
      phy->ver_addr);
}
