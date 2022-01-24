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
struct iwl_priv {int ucode_loaded; unsigned long reload_jiffies; scalar_t__ reload_count; int /*<<< orphan*/  restart; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  status; int /*<<< orphan*/  notif_wait; } ;
struct TYPE_2__ {scalar_t__ restart_fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  IWL_DL_FW_ERRORS ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 scalar_t__ IWL_MAX_CONTINUE_RELOAD_CNT ; 
 unsigned int IWL_MIN_RELOAD_DURATION ; 
 int /*<<< orphan*/  IWL_RXON_CTX_BSS ; 
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int /*<<< orphan*/  STATUS_READY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_priv*,int /*<<< orphan*/ ) ; 
 TYPE_1__ iwlwifi_mod_params ; 
 unsigned long jiffies ; 
 unsigned int FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct iwl_priv *priv, bool ondemand)
{
	unsigned int reload_msec;
	unsigned long reload_jiffies;

#ifdef CONFIG_IWLWIFI_DEBUG
	if (iwl_have_debug_level(IWL_DL_FW_ERRORS))
		iwl_print_rx_config_cmd(priv, IWL_RXON_CTX_BSS);
#endif

	/* uCode is no longer loaded. */
	priv->ucode_loaded = false;

	/* Set the FW error flag -- cleared on iwl_down */
	FUNC8(STATUS_FW_ERROR, &priv->status);

	FUNC3(&priv->notif_wait);

	/* Keep the restart process from trying to send host
	 * commands by clearing the ready bit */
	FUNC2(STATUS_READY, &priv->status);

	if (!ondemand) {
		/*
		 * If firmware keep reloading, then it indicate something
		 * serious wrong and firmware having problem to recover
		 * from it. Instead of keep trying which will fill the syslog
		 * and hang the system, let's just stop it
		 */
		reload_jiffies = jiffies;
		reload_msec = FUNC6((long) reload_jiffies -
					(long) priv->reload_jiffies);
		priv->reload_jiffies = reload_jiffies;
		if (reload_msec <= IWL_MIN_RELOAD_DURATION) {
			priv->reload_count++;
			if (priv->reload_count >= IWL_MAX_CONTINUE_RELOAD_CNT) {
				FUNC1(priv, "BUG_ON, Stop restarting\n");
				return;
			}
		} else
			priv->reload_count = 0;
	}

	if (!FUNC9(STATUS_EXIT_PENDING, &priv->status)) {
		if (iwlwifi_mod_params.restart_fw) {
			FUNC0(priv,
				  "Restarting adapter due to uCode error.\n");
			FUNC7(priv->workqueue, &priv->restart);
		} else
			FUNC0(priv,
				  "Detected FW error, but not restarting\n");
	}
}