
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_DIGITAL5_MISC6 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_warpcore_reset_lane(struct bnx2x *bp,
          struct bnx2x_phy *phy,
          u8 reset)
{
 u16 val;

 bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_DIGITAL5_MISC6, &val);
 if (reset)
  val |= 0xC000;
 else
  val &= 0x3FFF;
 bnx2x_cl45_write(bp, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_DIGITAL5_MISC6, val);
 bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_DIGITAL5_MISC6, &val);
}
