
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw_private_ops {int compute_pll_control; int ani_cache_ini_regs; int ani_control; int set_radar_params; int do_getnf; int restore_chainmask; int rfbus_done; int rfbus_req; int set_delta_slope; int mark_phy_inactive; int set_rfmode; int process_ini; int init_bb; int set_channel_regs; int set_rf_regs; int spur_mitigate_freq; int rf_set_freq; } ;
struct ath_hw {int nf_regs; } ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9160_10_OR_LATER (struct ath_hw*) ;
 int ar5008_hw_ani_cache_ini_regs ;
 int ar5008_hw_ani_control_new ;
 int ar5008_hw_compute_pll_control ;
 int ar5008_hw_do_getnf ;
 int ar5008_hw_init_bb ;
 int ar5008_hw_mark_phy_inactive ;
 int ar5008_hw_process_ini ;
 int ar5008_hw_rf_alloc_ext_banks (struct ath_hw*) ;
 int ar5008_hw_rfbus_done ;
 int ar5008_hw_rfbus_req ;
 int ar5008_hw_set_channel ;
 int ar5008_hw_set_channel_regs ;
 int ar5008_hw_set_delta_slope ;
 int ar5008_hw_set_nf_limits (struct ath_hw*) ;
 int ar5008_hw_set_radar_conf (struct ath_hw*) ;
 int ar5008_hw_set_radar_params ;
 int ar5008_hw_set_rf_regs ;
 int ar5008_hw_set_rfmode ;
 int ar5008_hw_spur_mitigate ;
 int ar5008_restore_chainmask ;
 int ar9160_hw_compute_pll_control ;
 struct ath_hw_private_ops* ath9k_hw_private_ops (struct ath_hw*) ;
 int memcpy (int ,int const*,int) ;

int ar5008_hw_attach_phy_ops(struct ath_hw *ah)
{
 struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
 static const u32 ar5416_cca_regs[6] = {
  133,
  132,
  130,
  128,
  131,
  129
 };
 int ret;

 ret = ar5008_hw_rf_alloc_ext_banks(ah);
 if (ret)
     return ret;

 priv_ops->rf_set_freq = ar5008_hw_set_channel;
 priv_ops->spur_mitigate_freq = ar5008_hw_spur_mitigate;

 priv_ops->set_rf_regs = ar5008_hw_set_rf_regs;
 priv_ops->set_channel_regs = ar5008_hw_set_channel_regs;
 priv_ops->init_bb = ar5008_hw_init_bb;
 priv_ops->process_ini = ar5008_hw_process_ini;
 priv_ops->set_rfmode = ar5008_hw_set_rfmode;
 priv_ops->mark_phy_inactive = ar5008_hw_mark_phy_inactive;
 priv_ops->set_delta_slope = ar5008_hw_set_delta_slope;
 priv_ops->rfbus_req = ar5008_hw_rfbus_req;
 priv_ops->rfbus_done = ar5008_hw_rfbus_done;
 priv_ops->restore_chainmask = ar5008_restore_chainmask;
 priv_ops->do_getnf = ar5008_hw_do_getnf;
 priv_ops->set_radar_params = ar5008_hw_set_radar_params;

 priv_ops->ani_control = ar5008_hw_ani_control_new;
 priv_ops->ani_cache_ini_regs = ar5008_hw_ani_cache_ini_regs;

 if (AR_SREV_9100(ah) || AR_SREV_9160_10_OR_LATER(ah))
  priv_ops->compute_pll_control = ar9160_hw_compute_pll_control;
 else
  priv_ops->compute_pll_control = ar5008_hw_compute_pll_control;

 ar5008_hw_set_nf_limits(ah);
 ar5008_hw_set_radar_conf(ah);
 memcpy(ah->nf_regs, ar5416_cca_regs, sizeof(ah->nf_regs));
 return 0;
}
