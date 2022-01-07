
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_hardware {scalar_t__ mute_override; scalar_t__ wake_override; scalar_t__ suspended_fifos; scalar_t__ maccontrol; } ;


 int MCTL_IHR_EN ;
 int MCTL_WAKE ;
 int brcms_b_mctrl (struct brcms_hardware*,int ,int) ;

__attribute__((used)) static void brcms_c_mctrl_reset(struct brcms_hardware *wlc_hw)
{

 wlc_hw->maccontrol = 0;
 wlc_hw->suspended_fifos = 0;
 wlc_hw->wake_override = 0;
 wlc_hw->mute_override = 0;
 brcms_b_mctrl(wlc_hw, ~0, MCTL_IHR_EN | MCTL_WAKE);
}
