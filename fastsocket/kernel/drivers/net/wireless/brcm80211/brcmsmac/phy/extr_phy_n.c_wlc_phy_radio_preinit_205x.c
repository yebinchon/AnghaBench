
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {int dummy; } ;


 int RFCC_CHIP0_PU ;
 int RFCC_OE_POR_FORCE ;
 int and_phy_reg (struct brcms_phy*,int,int ) ;
 int or_phy_reg (struct brcms_phy*,int,int ) ;

__attribute__((used)) static void wlc_phy_radio_preinit_205x(struct brcms_phy *pi)
{

 and_phy_reg(pi, 0x78, ~RFCC_CHIP0_PU);
 and_phy_reg(pi, 0x78, RFCC_OE_POR_FORCE);

 or_phy_reg(pi, 0x78, ~RFCC_OE_POR_FORCE);
 or_phy_reg(pi, 0x78, RFCC_CHIP0_PU);

}
