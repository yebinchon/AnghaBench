
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int hw; } ;


 int brcms_b_mute (int ,int) ;

void
brcms_c_mute(struct brcms_c_info *wlc, bool mute_tx)
{
 brcms_b_mute(wlc->hw, mute_tx);
}
