
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scancomplete_notification {scalar_t__ bt_status; int status; int tsf_high; int tsf_low; int scanned_channels; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {scalar_t__ scan_band; scalar_t__ iw_mode; scalar_t__ bt_status; int bt_traffic_change_work; int workqueue; int bt_traffic_load; int bt_ch_announce; int scan_completed; int status; scalar_t__ scan_start; } ;
struct iwl_device_cmd {int dummy; } ;


 scalar_t__ IEEE80211_BAND_2GHZ ;
 int IWL_BT_COEX_TRAFFIC_LOAD_HIGH ;
 int IWL_BT_COEX_TRAFFIC_LOAD_NONE ;
 int IWL_DEBUG_SCAN (struct iwl_priv*,char*,char*,int ,...) ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int STATUS_SCAN_COMPLETE ;
 int STATUS_SCAN_HW ;
 int clear_bit (int ,int *) ;
 scalar_t__ iwl_advanced_bt_coexist (struct iwl_priv*) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int queue_work (int ,int *) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int iwl_rx_scan_complete_notif(struct iwl_priv *priv,
           struct iwl_rx_cmd_buffer *rxb,
           struct iwl_device_cmd *cmd)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_scancomplete_notification *scan_notif = (void *)pkt->data;

 IWL_DEBUG_SCAN(priv, "Scan complete: %d channels (TSF 0x%08X:%08X) - %d\n",
         scan_notif->scanned_channels,
         scan_notif->tsf_low,
         scan_notif->tsf_high, scan_notif->status);

 IWL_DEBUG_SCAN(priv, "Scan on %sGHz took %dms\n",
         (priv->scan_band == IEEE80211_BAND_2GHZ) ? "2.4" : "5.2",
         jiffies_to_msecs(jiffies - priv->scan_start));
 set_bit(STATUS_SCAN_COMPLETE, &priv->status);
 clear_bit(STATUS_SCAN_HW, &priv->status);
 queue_work(priv->workqueue, &priv->scan_completed);

 if (priv->iw_mode != NL80211_IFTYPE_ADHOC &&
     iwl_advanced_bt_coexist(priv) &&
     priv->bt_status != scan_notif->bt_status) {
  if (scan_notif->bt_status) {

   if (!priv->bt_ch_announce)
    priv->bt_traffic_load =
     IWL_BT_COEX_TRAFFIC_LOAD_HIGH;




  } else {

   priv->bt_traffic_load =
    IWL_BT_COEX_TRAFFIC_LOAD_NONE;
  }
  priv->bt_status = scan_notif->bt_status;
  queue_work(priv->workqueue,
      &priv->bt_traffic_change_work);
 }
 return 0;
}
