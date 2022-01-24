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
struct TYPE_2__ {scalar_t__ value; scalar_t__ flags; int /*<<< orphan*/  fixed; int /*<<< orphan*/  disabled; } ;
union iwreq_data {TYPE_1__ power; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {scalar_t__ tx_power; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 scalar_t__ IPW_TX_POWER_DEFAULT ; 
 scalar_t__ IPW_TX_POWER_MAX ; 
 scalar_t__ IPW_TX_POWER_MIN ; 
 scalar_t__ IW_TXPOW_DBM ; 
 scalar_t__ FUNC0 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ipw_priv*) ; 
 struct ipw_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC2(dev);
	int err = 0;

	FUNC3(&priv->mutex);
	if (FUNC0(priv, wrqu->power.disabled)) {
		err = -EINPROGRESS;
		goto out;
	}

	if (!wrqu->power.fixed)
		wrqu->power.value = IPW_TX_POWER_DEFAULT;

	if (wrqu->power.flags != IW_TXPOW_DBM) {
		err = -EINVAL;
		goto out;
	}

	if ((wrqu->power.value > IPW_TX_POWER_MAX) ||
	    (wrqu->power.value < IPW_TX_POWER_MIN)) {
		err = -EINVAL;
		goto out;
	}

	priv->tx_power = wrqu->power.value;
	err = FUNC1(priv);
      out:
	FUNC4(&priv->mutex);
	return err;
}