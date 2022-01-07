
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_hardware {int band; } ;


 int BRCMS_ISNPHY (int ) ;
 int ON ;
 int SICF_FGC ;
 int brcms_b_core_ioctl (struct brcms_hardware*,int ,int ) ;

void brcms_b_phyclk_fgc(struct brcms_hardware *wlc_hw, bool clk)
{

 if (!BRCMS_ISNPHY(wlc_hw->band))
  return;

 if (ON == clk)
  brcms_b_core_ioctl(wlc_hw, SICF_FGC, SICF_FGC);
 else
  brcms_b_core_ioctl(wlc_hw, SICF_FGC, 0);

}
