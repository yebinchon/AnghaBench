
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_vif {int ap_sta_id; int id; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_bt_iterator_data {int reduced_tx_power; TYPE_3__* notif; int num_bss_ifaces; struct iwl_mvm* mvm; } ;
struct ieee80211_vif {scalar_t__ type; int chanctx_conf; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_6__ {scalar_t__ bt_traffic_load; scalar_t__ bt_status; } ;
struct TYPE_4__ {int band; } ;


 int BT_DISABLE_REDUCED_TXPOWER_THRESHOLD ;
 int BT_ENABLE_REDUCED_TXPOWER_THRESHOLD ;
 int BT_MBOX_MSG (TYPE_3__*,int,int ) ;
 int IEEE80211_BAND_2GHZ ;
 int IEEE80211_SMPS_AUTOMATIC ;
 int IEEE80211_SMPS_DYNAMIC ;
 int IEEE80211_SMPS_STATIC ;
 scalar_t__ IWL_BT_LOAD_FORCE_SISO_THRESHOLD ;
 int IWL_DEBUG_COEX (struct iwl_mvm*,char*,int ,scalar_t__,scalar_t__,int) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int OPEN_CON_2 ;
 int ieee80211_ave_rssi (struct ieee80211_vif*) ;
 int ieee80211_disable_rssi_reports (struct ieee80211_vif*) ;
 int ieee80211_enable_rssi_reports (struct ieee80211_vif*,int,int) ;
 int ieee80211_request_smps (struct ieee80211_vif*,int) ;
 scalar_t__ is_loose_coex () ;
 scalar_t__ iwl_mvm_bt_coex_reduced_txp (struct iwl_mvm*,int ,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void iwl_mvm_bt_notif_iterator(void *_data, u8 *mac,
          struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_bt_iterator_data *data = _data;
 struct iwl_mvm *mvm = data->mvm;
 struct ieee80211_chanctx_conf *chanctx_conf;
 enum ieee80211_smps_mode smps_mode;
 enum ieee80211_band band;
 int ave_rssi;

 if (vif->type != NL80211_IFTYPE_STATION)
  return;

 rcu_read_lock();
 chanctx_conf = rcu_dereference(vif->chanctx_conf);
 if (chanctx_conf && chanctx_conf->def.chan)
  band = chanctx_conf->def.chan->band;
 else
  band = -1;
 rcu_read_unlock();

 smps_mode = IEEE80211_SMPS_AUTOMATIC;

 if (band != IEEE80211_BAND_2GHZ) {
  ieee80211_request_smps(vif, smps_mode);
  return;
 }

 if (data->notif->bt_status)
  smps_mode = IEEE80211_SMPS_DYNAMIC;

 if (data->notif->bt_traffic_load >= IWL_BT_LOAD_FORCE_SISO_THRESHOLD)
  smps_mode = IEEE80211_SMPS_STATIC;

 IWL_DEBUG_COEX(data->mvm,
         "mac %d: bt_status %d traffic_load %d smps_req %d\n",
         mvmvif->id, data->notif->bt_status,
         data->notif->bt_traffic_load, smps_mode);

 ieee80211_request_smps(vif, smps_mode);


 if (is_loose_coex())
  return;

 data->num_bss_ifaces++;


 if (!BT_MBOX_MSG(data->notif, 3, OPEN_CON_2)) {

  if (iwl_mvm_bt_coex_reduced_txp(mvm, mvmvif->ap_sta_id, 0))
   IWL_ERR(mvm, "Couldn't send BT_CONFIG cmd\n");
  data->reduced_tx_power = 0;


  ieee80211_disable_rssi_reports(vif);
  return;
 }

 ave_rssi = ieee80211_ave_rssi(vif);


 if (!ave_rssi)
  ave_rssi = -100;
 if (ave_rssi > BT_ENABLE_REDUCED_TXPOWER_THRESHOLD) {
  if (iwl_mvm_bt_coex_reduced_txp(mvm, mvmvif->ap_sta_id, 1))
   IWL_ERR(mvm, "Couldn't send BT_CONFIG cmd\n");
 } else if (ave_rssi < BT_DISABLE_REDUCED_TXPOWER_THRESHOLD) {
  if (iwl_mvm_bt_coex_reduced_txp(mvm, mvmvif->ap_sta_id, 0))
   IWL_ERR(mvm, "Couldn't send BT_CONFIG cmd\n");





  data->reduced_tx_power = 0;
 }


 ieee80211_enable_rssi_reports(vif, BT_DISABLE_REDUCED_TXPOWER_THRESHOLD,
          BT_ENABLE_REDUCED_TXPOWER_THRESHOLD);
}
