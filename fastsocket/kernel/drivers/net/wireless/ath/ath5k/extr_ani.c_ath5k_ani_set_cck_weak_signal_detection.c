
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cck_weak_sig; } ;
struct ath5k_hw {TYPE_1__ ani_state; } ;


 int AR5K_PHY_CCK_CROSSCORR ;
 int AR5K_PHY_CCK_CROSSCORR_WEAK_SIG_THR ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int const) ;
 int ATH5K_DBG_UNLIMIT (struct ath5k_hw*,int ,char*,char*) ;
 int ATH5K_DEBUG_ANI ;

void
ath5k_ani_set_cck_weak_signal_detection(struct ath5k_hw *ah, bool on)
{
 static const int val[] = { 8, 6 };
 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_CCK_CROSSCORR,
    AR5K_PHY_CCK_CROSSCORR_WEAK_SIG_THR, val[on]);
 ah->ani_state.cck_weak_sig = on;
 ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI, "turned %s",
     on ? "on" : "off");
}
