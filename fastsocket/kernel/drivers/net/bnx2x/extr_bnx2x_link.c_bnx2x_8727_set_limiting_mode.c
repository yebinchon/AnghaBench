
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_PHY_IDENTIFIER ;
 int MDIO_PMA_REG_ROM_VER2 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static int bnx2x_8727_set_limiting_mode(struct bnx2x *bp,
     struct bnx2x_phy *phy,
     u16 edc_mode)
{
 u16 phy_identifier;
 u16 rom_ver2_val;
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_PHY_IDENTIFIER,
   &phy_identifier);

 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_PHY_IDENTIFIER,
    (phy_identifier & ~(1<<9)));

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_ROM_VER2,
   &rom_ver2_val);

 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_ROM_VER2,
    (rom_ver2_val & 0xff00) | (edc_mode & 0x00ff));

 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_PHY_IDENTIFIER,
    (phy_identifier | (1<<9)));

 return 0;
}
