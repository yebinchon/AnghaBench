
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_mhf (int ,int ,int ,int ,int) ;

void
wlapi_bmac_mhf(struct phy_shim_info *physhim, u8 idx, u16 mask,
        u16 val, int bands)
{
 brcms_b_mhf(physhim->wlc_hw, idx, mask, val, bands);
}
