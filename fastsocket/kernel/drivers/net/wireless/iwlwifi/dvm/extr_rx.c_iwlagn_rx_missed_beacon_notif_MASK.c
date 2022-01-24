#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {scalar_t__ missed_beacon_threshold; int /*<<< orphan*/  status; } ;
struct iwl_missed_beacon_notif {int /*<<< orphan*/  num_expected_beacons; int /*<<< orphan*/  num_recvd_beacons; int /*<<< orphan*/  total_missed_becons; int /*<<< orphan*/  consecutive_missed_beacons; } ;
struct iwl_device_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_SCANNING ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC3 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iwl_priv *priv,
				       struct iwl_rx_cmd_buffer *rxb,
				       struct iwl_device_cmd *cmd)

{
	struct iwl_rx_packet *pkt = FUNC3(rxb);
	struct iwl_missed_beacon_notif *missed_beacon = (void *)pkt->data;

	if (FUNC2(missed_beacon->consecutive_missed_beacons) >
	    priv->missed_beacon_threshold) {
		FUNC0(priv,
		    "missed bcn cnsq %d totl %d rcd %d expctd %d\n",
		    FUNC2(missed_beacon->consecutive_missed_beacons),
		    FUNC2(missed_beacon->total_missed_becons),
		    FUNC2(missed_beacon->num_recvd_beacons),
		    FUNC2(missed_beacon->num_expected_beacons));
		if (!FUNC4(STATUS_SCANNING, &priv->status))
			FUNC1(priv);
	}
	return 0;
}