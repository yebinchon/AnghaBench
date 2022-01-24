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
struct il_priv {scalar_t__ tx_power_user_lmt; scalar_t__ tx_power_device_lmt; scalar_t__ tx_power_next; TYPE_1__* ops; int /*<<< orphan*/  staging; int /*<<< orphan*/  active; int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;
typedef  scalar_t__ s8 ;
struct TYPE_2__ {int (* send_tx_power ) (struct il_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  S_SCANNING ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct il_priv*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(struct il_priv *il, s8 tx_power, bool force)
{
	int ret;
	s8 prev_tx_power;
	bool defer;

	FUNC3(&il->mutex);

	if (il->tx_power_user_lmt == tx_power && !force)
		return 0;

	if (!il->ops->send_tx_power)
		return -EOPNOTSUPP;

	/* 0 dBm mean 1 milliwatt */
	if (tx_power < 0) {
		FUNC1("Requested user TXPOWER %d below 1 mW.\n", tx_power);
		return -EINVAL;
	}

	if (tx_power > il->tx_power_device_lmt) {
		FUNC1("Requested user TXPOWER %d above upper limit %d.\n",
			tx_power, il->tx_power_device_lmt);
		return -EINVAL;
	}

	if (!FUNC2(il))
		return -EIO;

	/* scan complete and commit_rxon use tx_power_next value,
	 * it always need to be updated for newest request */
	il->tx_power_next = tx_power;

	/* do not set tx power when scanning or channel changing */
	defer = FUNC6(S_SCANNING, &il->status) ||
	    FUNC4(&il->active, &il->staging, sizeof(il->staging));
	if (defer && !force) {
		FUNC0("Deferring tx power set\n");
		return 0;
	}

	prev_tx_power = il->tx_power_user_lmt;
	il->tx_power_user_lmt = tx_power;

	ret = il->ops->send_tx_power(il);

	/* if fail to set tx_power, restore the orig. tx power */
	if (ret) {
		il->tx_power_user_lmt = prev_tx_power;
		il->tx_power_next = prev_tx_power;
	}
	return ret;
}