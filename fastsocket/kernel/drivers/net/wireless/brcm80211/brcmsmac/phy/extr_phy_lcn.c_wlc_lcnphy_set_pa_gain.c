
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_MASK ;
 int LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_SHIFT ;
 int LCNPHY_txgainctrlovrval1_pagain_ovr_val1_MASK ;
 int LCNPHY_txgainctrlovrval1_pagain_ovr_val1_SHIFT ;
 int mod_phy_reg (struct brcms_phy*,int,int ,int) ;

__attribute__((used)) static void wlc_lcnphy_set_pa_gain(struct brcms_phy *pi, u16 gain)
{
 mod_phy_reg(pi, 0x4fb,
      LCNPHY_txgainctrlovrval1_pagain_ovr_val1_MASK,
      gain << LCNPHY_txgainctrlovrval1_pagain_ovr_val1_SHIFT);
 mod_phy_reg(pi, 0x4fd,
      LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_MASK,
      gain << LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_SHIFT);
}
