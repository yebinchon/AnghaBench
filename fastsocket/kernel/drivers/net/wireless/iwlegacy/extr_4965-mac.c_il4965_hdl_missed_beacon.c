
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_missed_beacon_notif {int num_expected_beacons; int num_recvd_beacons; int total_missed_becons; int consecutive_missed_beacons; } ;
struct TYPE_2__ {struct il_missed_beacon_notif missed_beacon; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {scalar_t__ missed_beacon_threshold; int status; } ;


 int D_CALIB (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int S_SCANNING ;
 int il4965_init_sensitivity (struct il_priv*) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
il4965_hdl_missed_beacon(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 struct il_missed_beacon_notif *missed_beacon;

 missed_beacon = &pkt->u.missed_beacon;
 if (le32_to_cpu(missed_beacon->consecutive_missed_beacons) >
     il->missed_beacon_threshold) {
  D_CALIB("missed bcn cnsq %d totl %d rcd %d expctd %d\n",
   le32_to_cpu(missed_beacon->consecutive_missed_beacons),
   le32_to_cpu(missed_beacon->total_missed_becons),
   le32_to_cpu(missed_beacon->num_recvd_beacons),
   le32_to_cpu(missed_beacon->num_expected_beacons));
  if (!test_bit(S_SCANNING, &il->status))
   il4965_init_sensitivity(il);
 }
}
