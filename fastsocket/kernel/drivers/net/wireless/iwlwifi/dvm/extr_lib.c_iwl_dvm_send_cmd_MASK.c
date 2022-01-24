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
struct iwl_priv {scalar_t__ ucode_owner; int /*<<< orphan*/  trans; int /*<<< orphan*/  mutex; int /*<<< orphan*/  ucode_loaded; int /*<<< orphan*/  status; } ;
struct iwl_host_cmd {int flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int CMD_ON_DEMAND ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_OWNERSHIP_TM ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,char*) ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iwl_priv*) ; 
 scalar_t__ FUNC5 (struct iwl_priv*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct iwl_priv *priv, struct iwl_host_cmd *cmd)
{
	if (FUNC5(priv) || FUNC4(priv)) {
		FUNC2(priv, "Not sending command - %s KILL\n",
			 FUNC5(priv) ? "RF" : "CT");
		return -EIO;
	}

	if (FUNC8(STATUS_FW_ERROR, &priv->status)) {
		FUNC1(priv, "Command %s failed: FW Error\n",
			FUNC3(cmd->id));
		return -EIO;
	}

	/*
	 * This can happen upon FW ASSERT: we clear the STATUS_FW_ERROR flag
	 * in iwl_down but cancel the workers only later.
	 */
	if (!priv->ucode_loaded) {
		FUNC1(priv, "Fw not loaded - dropping CMD: %x\n", cmd->id);
		return -EIO;
	}

	/*
	 * Synchronous commands from this op-mode must hold
	 * the mutex, this ensures we don't try to send two
	 * (or more) synchronous commands at a time.
	 */
	if (!(cmd->flags & CMD_ASYNC))
		FUNC7(&priv->mutex);

	if (priv->ucode_owner == IWL_OWNERSHIP_TM &&
	    !(cmd->flags & CMD_ON_DEMAND)) {
		FUNC0(priv, "tm own the uCode, no regular hcmd send\n");
		return -EIO;
	}

	return FUNC6(priv->trans, cmd);
}