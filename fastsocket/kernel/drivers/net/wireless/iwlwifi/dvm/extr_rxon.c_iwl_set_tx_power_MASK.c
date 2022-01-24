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
struct iwl_rxon_context {int /*<<< orphan*/  staging; int /*<<< orphan*/  active; } ;
struct iwl_priv {int calib_disabled; scalar_t__ tx_power_user_lmt; scalar_t__ tx_power_next; int /*<<< orphan*/  status; TYPE_1__* nvm_data; int /*<<< orphan*/  mutex; struct iwl_rxon_context* contexts; } ;
typedef  scalar_t__ s8 ;
struct TYPE_2__ {scalar_t__ max_tx_pwr_half_dbm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ IWLAGN_TX_POWER_TARGET_POWER_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 size_t IWL_RXON_CTX_BSS ; 
 int IWL_TX_POWER_CALIB_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_SCANNING ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*) ; 
 int FUNC4 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iwl_priv *priv, s8 tx_power, bool force)
{
	int ret;
	s8 prev_tx_power;
	bool defer;
	struct iwl_rxon_context *ctx = &priv->contexts[IWL_RXON_CTX_BSS];

	if (priv->calib_disabled & IWL_TX_POWER_CALIB_DISABLED)
		return 0;

	FUNC5(&priv->mutex);

	if (priv->tx_power_user_lmt == tx_power && !force)
		return 0;

	if (tx_power < IWLAGN_TX_POWER_TARGET_POWER_MIN) {
		FUNC2(priv,
			 "Requested user TXPOWER %d below lower limit %d.\n",
			 tx_power,
			 IWLAGN_TX_POWER_TARGET_POWER_MIN);
		return -EINVAL;
	}

	if (tx_power > FUNC0(priv->nvm_data->max_tx_pwr_half_dbm, 2)) {
		FUNC2(priv,
			"Requested user TXPOWER %d above upper limit %d.\n",
			 tx_power, priv->nvm_data->max_tx_pwr_half_dbm);
		return -EINVAL;
	}

	if (!FUNC3(priv))
		return -EIO;

	/* scan complete and commit_rxon use tx_power_next value,
	 * it always need to be updated for newest request */
	priv->tx_power_next = tx_power;

	/* do not set tx power when scanning or channel changing */
	defer = FUNC7(STATUS_SCANNING, &priv->status) ||
		FUNC6(&ctx->active, &ctx->staging, sizeof(ctx->staging));
	if (defer && !force) {
		FUNC1(priv, "Deferring tx power set\n");
		return 0;
	}

	prev_tx_power = priv->tx_power_user_lmt;
	priv->tx_power_user_lmt = tx_power;

	ret = FUNC4(priv);

	/* if fail to set tx_power, restore the orig. tx power */
	if (ret) {
		priv->tx_power_user_lmt = prev_tx_power;
		priv->tx_power_next = prev_tx_power;
	}
	return ret;
}