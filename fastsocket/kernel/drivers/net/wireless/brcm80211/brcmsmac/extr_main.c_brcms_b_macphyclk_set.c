
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_hardware {int dummy; } ;


 int ON ;
 int SICF_MPCLKE ;
 int brcms_b_core_ioctl (struct brcms_hardware*,int ,int ) ;

void brcms_b_macphyclk_set(struct brcms_hardware *wlc_hw, bool clk)
{
 if (ON == clk)
  brcms_b_core_ioctl(wlc_hw, SICF_MPCLKE, SICF_MPCLKE);
 else
  brcms_b_core_ioctl(wlc_hw, SICF_MPCLKE, 0);
}
