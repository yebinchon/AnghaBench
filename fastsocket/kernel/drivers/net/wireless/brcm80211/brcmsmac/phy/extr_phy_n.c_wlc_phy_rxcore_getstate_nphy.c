
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int dummy; } ;


 int read_phy_reg (struct brcms_phy*,int) ;

u8 wlc_phy_rxcore_getstate_nphy(struct brcms_phy_pub *pih)
{
 u16 regval, rxen_bits;
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 regval = read_phy_reg(pi, 0xa2);
 rxen_bits = (regval >> 4) & 0xf;

 return (u8) rxen_bits;
}
