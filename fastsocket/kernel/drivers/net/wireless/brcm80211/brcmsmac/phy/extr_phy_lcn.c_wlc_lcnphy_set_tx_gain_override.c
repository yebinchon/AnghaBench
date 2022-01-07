
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int mod_phy_reg (struct brcms_phy*,int,int,int) ;

__attribute__((used)) static void wlc_lcnphy_set_tx_gain_override(struct brcms_phy *pi, bool bEnable)
{
 u16 bit = bEnable ? 1 : 0;

 mod_phy_reg(pi, 0x4b0, (0x1 << 7), bit << 7);

 mod_phy_reg(pi, 0x4b0, (0x1 << 14), bit << 14);

 mod_phy_reg(pi, 0x43b, (0x1 << 6), bit << 6);
}
