
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_core_phypll_ctl (int ,int) ;

void wlapi_bmac_core_phypll_ctl(struct phy_shim_info *physhim, bool on)
{
 brcms_b_core_phypll_ctl(physhim->wlc_hw, on);
}
