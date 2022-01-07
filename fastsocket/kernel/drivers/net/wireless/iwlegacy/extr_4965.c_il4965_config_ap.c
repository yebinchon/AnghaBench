
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int flags; int filter_flags; scalar_t__ assoc_id; } ;
struct TYPE_7__ {int valid_rx_ant; } ;
struct TYPE_6__ {int active_chains; } ;
struct il_priv {TYPE_5__ staging; TYPE_3__* ops; int current_ht_config; TYPE_2__ hw_params; TYPE_1__ chain_noise_data; int status; int mutex; struct ieee80211_vif* vif; } ;
struct TYPE_9__ {scalar_t__ use_short_slot; scalar_t__ use_short_preamble; } ;
struct ieee80211_vif {TYPE_4__ bss_conf; } ;
struct TYPE_8__ {int (* set_rxon_chain ) (struct il_priv*) ;} ;


 int IL_WARN (char*) ;
 int RXON_FILTER_ASSOC_MSK ;
 int RXON_FLG_BAND_24G_MSK ;
 int RXON_FLG_SHORT_PREAMBLE_MSK ;
 int RXON_FLG_SHORT_SLOT_MSK ;
 int S_EXIT_PENDING ;
 int il4965_send_beacon_cmd (struct il_priv*) ;
 int il_commit_rxon (struct il_priv*) ;
 int il_is_associated (struct il_priv*) ;
 int il_send_rxon_timing (struct il_priv*) ;
 int il_set_rxon_ht (struct il_priv*,int *) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct il_priv*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
il4965_config_ap(struct il_priv *il)
{
 struct ieee80211_vif *vif = il->vif;
 int ret = 0;

 lockdep_assert_held(&il->mutex);

 if (test_bit(S_EXIT_PENDING, &il->status))
  return;


 if (!il_is_associated(il)) {


  il->staging.filter_flags &= ~RXON_FILTER_ASSOC_MSK;
  il_commit_rxon(il);


  ret = il_send_rxon_timing(il);
  if (ret)
   IL_WARN("RXON timing failed - "
    "Attempting to continue.\n");


  il->chain_noise_data.active_chains = il->hw_params.valid_rx_ant;
  il_set_rxon_ht(il, &il->current_ht_config);
  if (il->ops->set_rxon_chain)
   il->ops->set_rxon_chain(il);

  il->staging.assoc_id = 0;

  if (vif->bss_conf.use_short_preamble)
   il->staging.flags |= RXON_FLG_SHORT_PREAMBLE_MSK;
  else
   il->staging.flags &= ~RXON_FLG_SHORT_PREAMBLE_MSK;

  if (il->staging.flags & RXON_FLG_BAND_24G_MSK) {
   if (vif->bss_conf.use_short_slot)
    il->staging.flags |= RXON_FLG_SHORT_SLOT_MSK;
   else
    il->staging.flags &= ~RXON_FLG_SHORT_SLOT_MSK;
  }

  il4965_send_beacon_cmd(il);

  il->staging.filter_flags |= RXON_FILTER_ASSOC_MSK;
  il_commit_rxon(il);
 }
 il4965_send_beacon_cmd(il);
}
