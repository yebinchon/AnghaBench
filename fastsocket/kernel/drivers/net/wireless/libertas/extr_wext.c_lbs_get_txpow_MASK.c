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
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {void* txpower_cur; int /*<<< orphan*/  radio_on; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; int fixed; int /*<<< orphan*/  flags; void* value; } ;
typedef  void* s16 ;

/* Variables and functions */
 int /*<<< orphan*/  IW_TXPOW_DBM ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct lbs_private*,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			  struct iw_request_info *info,
			  struct iw_param *vwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;
	s16 curlevel = 0;
	int ret = 0;

	FUNC0(LBS_DEB_WEXT);

	if (!priv->radio_on) {
		FUNC2("tx power off\n");
		vwrq->value = 0;
		vwrq->disabled = 1;
		goto out;
	}

	ret = FUNC3(priv, &curlevel, NULL, NULL);
	if (ret)
		goto out;

	FUNC2("tx power level %d dbm\n", curlevel);
	priv->txpower_cur = curlevel;

	vwrq->value = curlevel;
	vwrq->fixed = 1;
	vwrq->disabled = 0;
	vwrq->flags = IW_TXPOW_DBM;

out:
	FUNC1(LBS_DEB_WEXT, "ret %d", ret);
	return ret;
}