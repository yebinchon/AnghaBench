
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scanstart_notification {int beacon_timer; int status; int tsf_low; int tsf_high; scalar_t__ band; int channel; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {scalar_t__ scan_type; int hw_roc_start_notified; int hw; int scan_start_tsf; } ;
struct iwl_device_cmd {int dummy; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*,int ,char*,int ,int ,int ,int ) ;
 scalar_t__ IWL_SCAN_ROC ;
 int ieee80211_ready_on_channel (int ) ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static int iwl_rx_scan_start_notif(struct iwl_priv *priv,
        struct iwl_rx_cmd_buffer *rxb,
        struct iwl_device_cmd *cmd)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_scanstart_notification *notif = (void *)pkt->data;

 priv->scan_start_tsf = le32_to_cpu(notif->tsf_low);
 IWL_DEBUG_SCAN(priv, "Scan start: "
         "%d [802.11%s] "
         "(TSF: 0x%08X:%08X) - %d (beacon timer %u)\n",
         notif->channel,
         notif->band ? "bg" : "a",
         le32_to_cpu(notif->tsf_high),
         le32_to_cpu(notif->tsf_low),
         notif->status, notif->beacon_timer);

 if (priv->scan_type == IWL_SCAN_ROC &&
     !priv->hw_roc_start_notified) {
  ieee80211_ready_on_channel(priv->hw);
  priv->hw_roc_start_notified = 1;
 }

 return 0;
}
