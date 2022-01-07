
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw_private_ops {int fast_chan_change; int set_radar_params; int ani_cache_ini_regs; int do_getnf; int ani_control; int rfbus_done; int rfbus_req; int set_delta_slope; int mark_phy_inactive; int set_rfmode; int process_ini; int init_bb; int set_channel_regs; int compute_pll_control; int spur_mitigate_freq; int rf_set_freq; } ;
struct ath_hw_ops {int spectral_scan_wait; int spectral_scan_trigger; int spectral_scan_config; int antctrl_shared_chain_lnadiv; int antdiv_comb_conf_set; int antdiv_comb_conf_get; } ;
struct ath_hw {int nf_regs; } ;
 int ar9003_hw_ani_cache_ini_regs ;
 int ar9003_hw_ani_control ;
 int ar9003_hw_antctrl_shared_chain_lnadiv ;
 int ar9003_hw_antdiv_comb_conf_get ;
 int ar9003_hw_antdiv_comb_conf_set ;
 int ar9003_hw_compute_pll_control ;
 int ar9003_hw_do_getnf ;
 int ar9003_hw_fast_chan_change ;
 int ar9003_hw_init_bb ;
 int ar9003_hw_mark_phy_inactive ;
 int ar9003_hw_process_ini ;
 int ar9003_hw_rfbus_done ;
 int ar9003_hw_rfbus_req ;
 int ar9003_hw_set_channel ;
 int ar9003_hw_set_channel_regs ;
 int ar9003_hw_set_delta_slope ;
 int ar9003_hw_set_nf_limits (struct ath_hw*) ;
 int ar9003_hw_set_radar_conf (struct ath_hw*) ;
 int ar9003_hw_set_radar_params ;
 int ar9003_hw_set_rfmode ;
 int ar9003_hw_spectral_scan_config ;
 int ar9003_hw_spectral_scan_trigger ;
 int ar9003_hw_spectral_scan_wait ;
 int ar9003_hw_spur_mitigate ;
 struct ath_hw_ops* ath9k_hw_ops (struct ath_hw*) ;
 struct ath_hw_private_ops* ath9k_hw_private_ops (struct ath_hw*) ;
 int memcpy (int ,int const*,int) ;

void ar9003_hw_attach_phy_ops(struct ath_hw *ah)
{
 struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
 struct ath_hw_ops *ops = ath9k_hw_ops(ah);
 static const u32 ar9300_cca_regs[6] = {
  133,
  132,
  131,
  130,
  129,
  128,
 };

 priv_ops->rf_set_freq = ar9003_hw_set_channel;
 priv_ops->spur_mitigate_freq = ar9003_hw_spur_mitigate;
 priv_ops->compute_pll_control = ar9003_hw_compute_pll_control;
 priv_ops->set_channel_regs = ar9003_hw_set_channel_regs;
 priv_ops->init_bb = ar9003_hw_init_bb;
 priv_ops->process_ini = ar9003_hw_process_ini;
 priv_ops->set_rfmode = ar9003_hw_set_rfmode;
 priv_ops->mark_phy_inactive = ar9003_hw_mark_phy_inactive;
 priv_ops->set_delta_slope = ar9003_hw_set_delta_slope;
 priv_ops->rfbus_req = ar9003_hw_rfbus_req;
 priv_ops->rfbus_done = ar9003_hw_rfbus_done;
 priv_ops->ani_control = ar9003_hw_ani_control;
 priv_ops->do_getnf = ar9003_hw_do_getnf;
 priv_ops->ani_cache_ini_regs = ar9003_hw_ani_cache_ini_regs;
 priv_ops->set_radar_params = ar9003_hw_set_radar_params;
 priv_ops->fast_chan_change = ar9003_hw_fast_chan_change;

 ops->antdiv_comb_conf_get = ar9003_hw_antdiv_comb_conf_get;
 ops->antdiv_comb_conf_set = ar9003_hw_antdiv_comb_conf_set;
 ops->antctrl_shared_chain_lnadiv = ar9003_hw_antctrl_shared_chain_lnadiv;
 ops->spectral_scan_config = ar9003_hw_spectral_scan_config;
 ops->spectral_scan_trigger = ar9003_hw_spectral_scan_trigger;
 ops->spectral_scan_wait = ar9003_hw_spectral_scan_wait;

 ar9003_hw_set_nf_limits(ah);
 ar9003_hw_set_radar_conf(ah);
 memcpy(ah->nf_regs, ar9300_cca_regs, sizeof(ah->nf_regs));
}
