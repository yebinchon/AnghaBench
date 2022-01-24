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
struct iwl_mvm {int /*<<< orphan*/  last_bt_notif; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_bt_coex_profile_notif {char* bt_open_conn; char* bt_traffic_load; char* bt_agg_traffic_load; char* bt_ci_compliance; scalar_t__ bt_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct iwl_bt_coex_profile_notif*,int) ; 
 struct iwl_rx_packet* FUNC3 (struct iwl_rx_cmd_buffer*) ; 

int FUNC4(struct iwl_mvm *mvm,
			     struct iwl_rx_cmd_buffer *rxb,
			     struct iwl_device_cmd *dev_cmd)
{
	struct iwl_rx_packet *pkt = FUNC3(rxb);
	struct iwl_bt_coex_profile_notif *notif = (void *)pkt->data;


	FUNC0(mvm, "BT Coex Notification received\n");
	FUNC0(mvm, "\tBT %salive\n", notif->bt_status ? "" : "not ");
	FUNC0(mvm, "\tBT open conn %d\n", notif->bt_open_conn);
	FUNC0(mvm, "\tBT traffic load %d\n", notif->bt_traffic_load);
	FUNC0(mvm, "\tBT agg traffic load %d\n",
		       notif->bt_agg_traffic_load);
	FUNC0(mvm, "\tBT ci compliance %d\n", notif->bt_ci_compliance);

	/* remember this notification for future use: rssi fluctuations */
	FUNC2(&mvm->last_bt_notif, notif, sizeof(mvm->last_bt_notif));

	FUNC1(mvm);

	/*
	 * This is an async handler for a notification, returning anything other
	 * than 0 doesn't make sense even if HCMD failed.
	 */
	return 0;
}