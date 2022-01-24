#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct il_missed_beacon_notif {int /*<<< orphan*/  num_expected_beacons; int /*<<< orphan*/  num_recvd_beacons; int /*<<< orphan*/  total_missed_becons; int /*<<< orphan*/  consecutive_missed_beacons; } ;
struct TYPE_2__ {struct il_missed_beacon_notif missed_beacon; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {scalar_t__ missed_beacon_threshold; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  S_SCANNING ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct il_rx_pkt* FUNC3 (struct il_rx_buf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct il_priv *il, struct il_rx_buf *rxb)
{
	struct il_rx_pkt *pkt = FUNC3(rxb);
	struct il_missed_beacon_notif *missed_beacon;

	missed_beacon = &pkt->u.missed_beacon;
	if (FUNC2(missed_beacon->consecutive_missed_beacons) >
	    il->missed_beacon_threshold) {
		FUNC0("missed bcn cnsq %d totl %d rcd %d expctd %d\n",
			FUNC2(missed_beacon->consecutive_missed_beacons),
			FUNC2(missed_beacon->total_missed_becons),
			FUNC2(missed_beacon->num_recvd_beacons),
			FUNC2(missed_beacon->num_expected_beacons));
		if (!FUNC4(S_SCANNING, &il->status))
			FUNC1(il);
	}
}