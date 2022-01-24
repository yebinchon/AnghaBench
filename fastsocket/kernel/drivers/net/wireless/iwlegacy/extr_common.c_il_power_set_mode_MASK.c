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
struct TYPE_6__ {int /*<<< orphan*/  sleep_cmd; int /*<<< orphan*/  sleep_cmd_next; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct il_priv {TYPE_3__ power_data; TYPE_2__ chain_noise_data; TYPE_1__* ops; int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;
struct il_powertable_cmd {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* update_chain_flags ) (struct il_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int EIO ; 
 scalar_t__ IL_CHAIN_NOISE_ALIVE ; 
 scalar_t__ IL_CHAIN_NOISE_DONE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int IL_POWER_DRIVER_ALLOW_SLEEP_MSK ; 
 int /*<<< orphan*/  S_POWER_PMI ; 
 int /*<<< orphan*/  S_SCANNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 int FUNC5 (struct il_priv*,struct il_powertable_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct il_powertable_cmd*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct il_powertable_cmd*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct il_priv *il, struct il_powertable_cmd *cmd, bool force)
{
	int ret;
	bool update_chains;

	FUNC6(&il->mutex);

	/* Don't update the RX chain when chain noise calibration is running */
	update_chains = il->chain_noise_data.state == IL_CHAIN_NOISE_DONE ||
	    il->chain_noise_data.state == IL_CHAIN_NOISE_ALIVE;

	if (!FUNC7(&il->power_data.sleep_cmd, cmd, sizeof(*cmd)) && !force)
		return 0;

	if (!FUNC4(il))
		return -EIO;

	/* scan complete use sleep_power_next, need to be updated */
	FUNC8(&il->power_data.sleep_cmd_next, cmd, sizeof(*cmd));
	if (FUNC11(S_SCANNING, &il->status) && !force) {
		FUNC0("Defer power set mode while scanning\n");
		return 0;
	}

	if (cmd->flags & IL_POWER_DRIVER_ALLOW_SLEEP_MSK)
		FUNC9(S_POWER_PMI, &il->status);

	ret = FUNC5(il, cmd);
	if (!ret) {
		if (!(cmd->flags & IL_POWER_DRIVER_ALLOW_SLEEP_MSK))
			FUNC3(S_POWER_PMI, &il->status);

		if (il->ops->update_chain_flags && update_chains)
			il->ops->update_chain_flags(il);
		else if (il->ops->update_chain_flags)
			FUNC1("Cannot update the power, chain noise "
				"calibration running: %d\n",
				il->chain_noise_data.state);

		FUNC8(&il->power_data.sleep_cmd, cmd, sizeof(*cmd));
	} else
		FUNC2("set power fail, ret = %d", ret);

	return ret;
}