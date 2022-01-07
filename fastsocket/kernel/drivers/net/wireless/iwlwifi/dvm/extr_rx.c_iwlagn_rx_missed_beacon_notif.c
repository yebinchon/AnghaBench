
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {scalar_t__ missed_beacon_threshold; int status; } ;
struct iwl_missed_beacon_notif {int num_expected_beacons; int num_recvd_beacons; int total_missed_becons; int consecutive_missed_beacons; } ;
struct iwl_device_cmd {int dummy; } ;


 int IWL_DEBUG_CALIB (struct iwl_priv*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int STATUS_SCANNING ;
 int iwl_init_sensitivity (struct iwl_priv*) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int iwlagn_rx_missed_beacon_notif(struct iwl_priv *priv,
           struct iwl_rx_cmd_buffer *rxb,
           struct iwl_device_cmd *cmd)

{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_missed_beacon_notif *missed_beacon = (void *)pkt->data;

 if (le32_to_cpu(missed_beacon->consecutive_missed_beacons) >
     priv->missed_beacon_threshold) {
  IWL_DEBUG_CALIB(priv,
      "missed bcn cnsq %d totl %d rcd %d expctd %d\n",
      le32_to_cpu(missed_beacon->consecutive_missed_beacons),
      le32_to_cpu(missed_beacon->total_missed_becons),
      le32_to_cpu(missed_beacon->num_recvd_beacons),
      le32_to_cpu(missed_beacon->num_expected_beacons));
  if (!test_bit(STATUS_SCANNING, &priv->status))
   iwl_init_sensitivity(priv);
 }
 return 0;
}
