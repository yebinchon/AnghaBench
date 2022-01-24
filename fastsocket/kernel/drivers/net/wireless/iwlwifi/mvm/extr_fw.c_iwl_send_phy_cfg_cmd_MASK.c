#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  flow_trigger; int /*<<< orphan*/  event_trigger; } ;
struct iwl_phy_cfg_cmd {int /*<<< orphan*/  phy_cfg; TYPE_3__ calib_control; } ;
struct iwl_mvm {int cur_ucode; TYPE_2__* fw; } ;
typedef  int /*<<< orphan*/  phy_cfg_cmd ;
typedef  enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;
struct TYPE_5__ {TYPE_1__* default_calib; int /*<<< orphan*/  phy_config; } ;
struct TYPE_4__ {int /*<<< orphan*/  flow_trigger; int /*<<< orphan*/  event_trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_CONFIGURATION_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_phy_cfg_cmd*) ; 

__attribute__((used)) static int FUNC3(struct iwl_mvm *mvm)
{
	struct iwl_phy_cfg_cmd phy_cfg_cmd;
	enum iwl_ucode_type ucode_type = mvm->cur_ucode;

	/* Set parameters */
	phy_cfg_cmd.phy_cfg = FUNC1(mvm->fw->phy_config);
	phy_cfg_cmd.calib_control.event_trigger =
		mvm->fw->default_calib[ucode_type].event_trigger;
	phy_cfg_cmd.calib_control.flow_trigger =
		mvm->fw->default_calib[ucode_type].flow_trigger;

	FUNC0(mvm, "Sending Phy CFG command: 0x%x\n",
		       phy_cfg_cmd.phy_cfg);

	return FUNC2(mvm, PHY_CONFIGURATION_CMD, CMD_SYNC,
				    sizeof(phy_cfg_cmd), &phy_cfg_cmd);
}