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
struct iwl_mvm {int /*<<< orphan*/  hw; int /*<<< orphan*/  last_bt_notif; } ;
struct iwl_bt_iterator_data {int reduced_tx_power; scalar_t__ num_bss_ifaces; int /*<<< orphan*/ * notif; struct iwl_mvm* mvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_bt_iterator_data*) ; 
 int /*<<< orphan*/  iwl_mvm_bt_notif_iterator ; 
 scalar_t__ FUNC2 (struct iwl_mvm*,int) ; 

__attribute__((used)) static void FUNC3(struct iwl_mvm *mvm)
{
	struct iwl_bt_iterator_data data = {
		.mvm = mvm,
		.notif = &mvm->last_bt_notif,
		.reduced_tx_power = true,
	};

	FUNC1(
					mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
					iwl_mvm_bt_notif_iterator, &data);

	/*
	 * If there are no BSS / P2P client interfaces, reduced Tx Power is
	 * irrelevant since it is based on the RSSI coming from the beacon.
	 * Use BT_KILL_MSK_DEFAULT in that case.
	 */
	data.reduced_tx_power = data.reduced_tx_power && data.num_bss_ifaces;

	if (FUNC2(mvm, data.reduced_tx_power))
		FUNC0(mvm, "Failed to update the ctrl_kill_msk\n");
}