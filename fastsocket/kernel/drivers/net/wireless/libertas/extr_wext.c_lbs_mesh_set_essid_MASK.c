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
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;
struct lbs_private {TYPE_1__ curbssparams; int /*<<< orphan*/  mesh_ssid_len; int /*<<< orphan*/  mesh_ssid; int /*<<< orphan*/  radio_on; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int /*<<< orphan*/  length; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_START ; 
 int E2BIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			      struct iw_request_info *info,
			      struct iw_point *dwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;
	int ret = 0;

	FUNC0(LBS_DEB_WEXT);

	if (!priv->radio_on) {
		ret = -EINVAL;
		goto out;
	}

	/* Check the size of the string */
	if (dwrq->length > IW_ESSID_MAX_SIZE) {
		ret = -E2BIG;
		goto out;
	}

	if (!dwrq->flags || !dwrq->length) {
		ret = -EINVAL;
		goto out;
	} else {
		/* Specific SSID requested */
		FUNC3(priv->mesh_ssid, extra, dwrq->length);
		priv->mesh_ssid_len = dwrq->length;
	}

	FUNC2(priv, CMD_ACT_MESH_CONFIG_START,
			priv->curbssparams.channel);
 out:
	FUNC1(LBS_DEB_WEXT, "ret %d", ret);
	return ret;
}