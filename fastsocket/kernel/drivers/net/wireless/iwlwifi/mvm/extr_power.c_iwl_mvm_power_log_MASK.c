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
struct iwl_powertable_cmd {int flags; int /*<<< orphan*/  lprx_rssi_threshold; int /*<<< orphan*/  tx_data_timeout; int /*<<< orphan*/  rx_data_timeout; int /*<<< orphan*/  keep_alive_seconds; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  power_scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ iwlmvm_mod_params ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iwl_mvm *mvm,
			      struct iwl_powertable_cmd *cmd)
{
	FUNC0(mvm,
			"Sending power table command for power level %d, flags = 0x%X\n",
			iwlmvm_mod_params.power_scheme,
			FUNC2(cmd->flags));
	FUNC0(mvm, "Keep alive = %u sec\n", cmd->keep_alive_seconds);

	if (cmd->flags & FUNC1(POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK)) {
		FUNC0(mvm, "Rx timeout = %u usec\n",
				FUNC3(cmd->rx_data_timeout));
		FUNC0(mvm, "Tx timeout = %u usec\n",
				FUNC3(cmd->tx_data_timeout));
		FUNC0(mvm, "LP RX RSSI threshold = %u\n",
				cmd->lprx_rssi_threshold);
	}
}