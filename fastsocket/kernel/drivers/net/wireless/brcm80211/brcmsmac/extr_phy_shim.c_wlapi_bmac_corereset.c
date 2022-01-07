
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_corereset (int ,int ) ;

void wlapi_bmac_corereset(struct phy_shim_info *physhim, u32 flags)
{
 brcms_b_corereset(physhim->wlc_hw, flags);
}
