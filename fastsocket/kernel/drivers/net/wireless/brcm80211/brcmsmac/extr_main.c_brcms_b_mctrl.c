
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_hardware {int maccontrol; } ;


 int brcms_c_mctrl_write (struct brcms_hardware*) ;

void brcms_b_mctrl(struct brcms_hardware *wlc_hw, u32 mask, u32 val)
{
 u32 maccontrol;
 u32 new_maccontrol;

 if (val & ~mask)
  return;
 maccontrol = wlc_hw->maccontrol;
 new_maccontrol = (maccontrol & ~mask) | val;


 if (new_maccontrol == maccontrol)
  return;


 wlc_hw->maccontrol = new_maccontrol;


 brcms_c_mctrl_write(wlc_hw);
}
