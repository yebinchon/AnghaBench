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
struct net_device {struct lbs_private* ml_priv; } ;
struct TYPE_2__ {int channel; int /*<<< orphan*/  bssid; } ;
struct lbs_private {scalar_t__ mode; TYPE_1__ curbssparams; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int e; int m; } ;
struct chan_freq_power {scalar_t__ channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_START ; 
 int EINVAL ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 struct chan_freq_power* FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct chan_freq_power* FUNC6 (struct lbs_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lbs_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lbs_private*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev,
			     struct iw_request_info *info,
			     struct iw_freq *fwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;
	struct chan_freq_power *cfp;
	int ret = -EINVAL;

	FUNC3(LBS_DEB_WEXT);

	/* If setting by frequency, convert to a channel */
	if (fwrq->e == 1) {
		long f = fwrq->m / 100000;

		cfp = FUNC0(priv, 0, f);
		if (!cfp) {
			FUNC5("invalid freq %ld\n", f);
			goto out;
		}

		fwrq->e = 0;
		fwrq->m = (int) cfp->channel;
	}

	/* Setting by channel number */
	if (fwrq->m > 1000 || fwrq->e > 0) {
		goto out;
	}

	cfp = FUNC6(priv, 0, fwrq->m);
	if (!cfp) {
		goto out;
	}

	if (fwrq->m != priv->curbssparams.channel) {
		FUNC5("mesh channel change forces eth disconnect\n");
		if (priv->mode == IW_MODE_INFRA)
			FUNC2(priv,
						     priv->curbssparams.bssid,
						     WLAN_REASON_DEAUTH_LEAVING);
		else if (priv->mode == IW_MODE_ADHOC)
			FUNC1(priv);
	}
	FUNC7(priv, CMD_ACT_MESH_CONFIG_START, fwrq->m);
	FUNC8(priv);
	ret = 0;

out:
	FUNC4(LBS_DEB_WEXT, "ret %d", ret);
	return ret;
}