
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mwl8k_priv {int capture_beacon; int * capture_bssid; scalar_t__ ap_fw; } ;
struct TYPE_14__ {int bssid; scalar_t__ assoc; int use_short_slot; int use_short_preamble; int basic_rates; } ;
struct ieee80211_vif {TYPE_6__ bss_conf; } ;
struct TYPE_9__ {int rx_mask; } ;
struct TYPE_10__ {TYPE_1__ mcs; } ;
struct ieee80211_sta {int* supp_rates; TYPE_2__ ht_cap; } ;
struct TYPE_12__ {TYPE_3__* chan; } ;
struct TYPE_13__ {TYPE_4__ chandef; } ;
struct ieee80211_hw {TYPE_5__ conf; struct mwl8k_priv* priv; } ;
struct ieee80211_bss_conf {int dummy; } ;
struct TYPE_16__ {int hw_value; } ;
struct TYPE_15__ {int hw_value; } ;
struct TYPE_11__ {size_t band; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_ERP_CTS_PROT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int BSS_CHANGED_HT ;
 int ETH_ALEN ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int ffs (int ) ;
 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 int memcpy (int *,int ,int) ;
 int mwl8k_cmd_set_aid (struct ieee80211_hw*,struct ieee80211_vif*,int) ;
 int mwl8k_cmd_set_rate (struct ieee80211_hw*,struct ieee80211_vif*,int,int *) ;
 int mwl8k_cmd_set_slot (struct ieee80211_hw*,int ) ;
 int mwl8k_cmd_use_fixed_rate_ap (struct ieee80211_hw*,int,int) ;
 int mwl8k_cmd_use_fixed_rate_sta (struct ieee80211_hw*) ;
 scalar_t__ mwl8k_fw_lock (struct ieee80211_hw*) ;
 int mwl8k_fw_unlock (struct ieee80211_hw*) ;
 TYPE_8__* mwl8k_rates_24 ;
 TYPE_7__* mwl8k_rates_50 ;
 int mwl8k_set_radio_preamble (struct ieee80211_hw*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void
mwl8k_bss_info_changed_sta(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
      struct ieee80211_bss_conf *info, u32 changed)
{
 struct mwl8k_priv *priv = hw->priv;
 u32 ap_legacy_rates = 0;
 u8 ap_mcs_rates[16];
 int rc;

 if (mwl8k_fw_lock(hw))
  return;




 if ((changed & BSS_CHANGED_ASSOC) && !vif->bss_conf.assoc)
  priv->capture_beacon = 0;




 if (vif->bss_conf.assoc) {
  struct ieee80211_sta *ap;

  rcu_read_lock();

  ap = ieee80211_find_sta(vif, vif->bss_conf.bssid);
  if (ap == ((void*)0)) {
   rcu_read_unlock();
   goto out;
  }

  if (hw->conf.chandef.chan->band == IEEE80211_BAND_2GHZ) {
   ap_legacy_rates = ap->supp_rates[IEEE80211_BAND_2GHZ];
  } else {
   ap_legacy_rates =
    ap->supp_rates[IEEE80211_BAND_5GHZ] << 5;
  }
  memcpy(ap_mcs_rates, ap->ht_cap.mcs.rx_mask, 16);

  rcu_read_unlock();
 }

 if ((changed & BSS_CHANGED_ASSOC) && vif->bss_conf.assoc &&
     !priv->ap_fw) {
  rc = mwl8k_cmd_set_rate(hw, vif, ap_legacy_rates, ap_mcs_rates);
  if (rc)
   goto out;

  rc = mwl8k_cmd_use_fixed_rate_sta(hw);
  if (rc)
   goto out;
 } else {
  if ((changed & BSS_CHANGED_ASSOC) && vif->bss_conf.assoc &&
      priv->ap_fw) {
   int idx;
   int rate;



   idx = ffs(vif->bss_conf.basic_rates);
   if (idx)
    idx--;

   if (hw->conf.chandef.chan->band == IEEE80211_BAND_2GHZ)
    rate = mwl8k_rates_24[idx].hw_value;
   else
    rate = mwl8k_rates_50[idx].hw_value;

   mwl8k_cmd_use_fixed_rate_ap(hw, rate, rate);
  }
 }

 if (changed & BSS_CHANGED_ERP_PREAMBLE) {
  rc = mwl8k_set_radio_preamble(hw,
    vif->bss_conf.use_short_preamble);
  if (rc)
   goto out;
 }

 if ((changed & BSS_CHANGED_ERP_SLOT) && !priv->ap_fw) {
  rc = mwl8k_cmd_set_slot(hw, vif->bss_conf.use_short_slot);
  if (rc)
   goto out;
 }

 if (vif->bss_conf.assoc && !priv->ap_fw &&
     (changed & (BSS_CHANGED_ASSOC | BSS_CHANGED_ERP_CTS_PROT |
   BSS_CHANGED_HT))) {
  rc = mwl8k_cmd_set_aid(hw, vif, ap_legacy_rates);
  if (rc)
   goto out;
 }

 if (vif->bss_conf.assoc &&
     (changed & (BSS_CHANGED_ASSOC | BSS_CHANGED_BEACON_INT))) {




  memcpy(priv->capture_bssid, vif->bss_conf.bssid, ETH_ALEN);
  priv->capture_beacon = 1;
 }

out:
 mwl8k_fw_unlock(hw);
}
