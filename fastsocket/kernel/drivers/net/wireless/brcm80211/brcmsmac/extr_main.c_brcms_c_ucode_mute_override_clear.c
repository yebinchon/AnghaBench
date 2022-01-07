
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_hardware {scalar_t__ mute_override; int maccontrol; } ;


 int MCTL_AP ;
 int MCTL_INFRA ;
 int brcms_c_mctrl_write (struct brcms_hardware*) ;

__attribute__((used)) static void brcms_c_ucode_mute_override_clear(struct brcms_hardware *wlc_hw)
{
 if (wlc_hw->mute_override == 0)
  return;

 wlc_hw->mute_override = 0;




 if ((wlc_hw->maccontrol & (MCTL_AP | MCTL_INFRA)) == MCTL_INFRA)
  return;

 brcms_c_mctrl_write(wlc_hw);
}
