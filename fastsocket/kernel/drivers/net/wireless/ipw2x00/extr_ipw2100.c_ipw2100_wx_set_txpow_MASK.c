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
struct TYPE_4__ {int flags; scalar_t__ fixed; int value; int /*<<< orphan*/  disabled; } ;
union iwreq_data {TYPE_2__ txpower; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int /*<<< orphan*/  action_mutex; TYPE_1__* ieee; } ;
struct TYPE_3__ {scalar_t__ iw_mode; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int IPW_TX_POWER_DEFAULT ; 
 int IPW_TX_POWER_MAX_DBM ; 
 int IPW_TX_POWER_MIN_DBM ; 
 scalar_t__ IW_MODE_ADHOC ; 
 int IW_TXPOW_DBM ; 
 int IW_TXPOW_TYPE ; 
 int STATUS_INITIALIZED ; 
 int FUNC1 (struct ipw2100_priv*,int) ; 
 scalar_t__ FUNC2 (struct ipw2100_priv*,int /*<<< orphan*/ ) ; 
 struct ipw2100_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
				struct iw_request_info *info,
				union iwreq_data *wrqu, char *extra)
{
	struct ipw2100_priv *priv = FUNC3(dev);
	int err = 0, value;
	
	if (FUNC2(priv, wrqu->txpower.disabled))
		return -EINPROGRESS;

	if (priv->ieee->iw_mode != IW_MODE_ADHOC)
		return 0;

	if ((wrqu->txpower.flags & IW_TXPOW_TYPE) != IW_TXPOW_DBM)
		return -EINVAL;

	if (wrqu->txpower.fixed == 0)
		value = IPW_TX_POWER_DEFAULT;
	else {
		if (wrqu->txpower.value < IPW_TX_POWER_MIN_DBM ||
		    wrqu->txpower.value > IPW_TX_POWER_MAX_DBM)
			return -EINVAL;

		value = wrqu->txpower.value;
	}

	FUNC4(&priv->action_mutex);
	if (!(priv->status & STATUS_INITIALIZED)) {
		err = -EIO;
		goto done;
	}

	err = FUNC1(priv, value);

	FUNC0("SET TX Power -> %d\n", value);

      done:
	FUNC5(&priv->action_mutex);
	return err;
}