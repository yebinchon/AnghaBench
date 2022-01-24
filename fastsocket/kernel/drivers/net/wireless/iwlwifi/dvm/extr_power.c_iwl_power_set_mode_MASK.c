#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sleep_cmd; int /*<<< orphan*/  sleep_cmd_next; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct iwl_priv {TYPE_2__ power_data; TYPE_1__ chain_noise_data; int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;
struct iwl_powertable_cmd {int flags; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ IWL_CHAIN_NOISE_ALIVE ; 
 scalar_t__ IWL_CHAIN_NOISE_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,int) ; 
 int IWL_POWER_DRIVER_ALLOW_SLEEP_MSK ; 
 int /*<<< orphan*/  STATUS_SCANNING ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*) ; 
 int FUNC5 (struct iwl_priv*,struct iwl_powertable_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct iwl_powertable_cmd*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct iwl_powertable_cmd*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct iwl_priv *priv, struct iwl_powertable_cmd *cmd,
		       bool force)
{
	int ret;
	bool update_chains;

	FUNC7(&priv->mutex);

	/* Don't update the RX chain when chain noise calibration is running */
	update_chains = priv->chain_noise_data.state == IWL_CHAIN_NOISE_DONE ||
			priv->chain_noise_data.state == IWL_CHAIN_NOISE_ALIVE;

	if (!FUNC8(&priv->power_data.sleep_cmd, cmd, sizeof(*cmd)) && !force)
		return 0;

	if (!FUNC4(priv))
		return -EIO;

	/* scan complete use sleep_power_next, need to be updated */
	FUNC9(&priv->power_data.sleep_cmd_next, cmd, sizeof(*cmd));
	if (FUNC10(STATUS_SCANNING, &priv->status) && !force) {
		FUNC0(priv, "Defer power set mode while scanning\n");
		return 0;
	}

	if (cmd->flags & IWL_POWER_DRIVER_ALLOW_SLEEP_MSK)
		FUNC3(priv, true);

	ret = FUNC5(priv, cmd);
	if (!ret) {
		if (!(cmd->flags & IWL_POWER_DRIVER_ALLOW_SLEEP_MSK))
			FUNC3(priv, false);

		if (update_chains)
			FUNC6(priv);
		else
			FUNC1(priv,
					"Cannot update the power, chain noise "
					"calibration running: %d\n",
					priv->chain_noise_data.state);

		FUNC9(&priv->power_data.sleep_cmd, cmd, sizeof(*cmd));
	} else
		FUNC2(priv, "set power fail, ret = %d", ret);

	return ret;
}