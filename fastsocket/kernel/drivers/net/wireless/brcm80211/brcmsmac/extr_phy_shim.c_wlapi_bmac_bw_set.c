
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_bw_set (int ,int ) ;

void wlapi_bmac_bw_set(struct phy_shim_info *physhim, u16 bw)
{
 brcms_b_bw_set(physhim->wlc_hw, bw);
}
