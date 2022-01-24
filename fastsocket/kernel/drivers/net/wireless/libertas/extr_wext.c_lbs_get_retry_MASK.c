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
typedef  void* u16 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {void* txretrycount; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; void* value; scalar_t__ disabled; } ;

/* Variables and functions */
 int IW_RETRY_LIMIT ; 
 int IW_RETRY_LONG ; 
 int IW_RETRY_SHORT ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  SNMP_MIB_OID_LONG_RETRY_LIMIT ; 
 int /*<<< orphan*/  SNMP_MIB_OID_SHORT_RETRY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct iw_request_info *info,
			  struct iw_param *vwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;
	int ret = 0;
	u16 val = 0;

	FUNC0(LBS_DEB_WEXT);

	vwrq->disabled = 0;

	if (vwrq->flags & IW_RETRY_LONG) {
		ret = FUNC2(priv, SNMP_MIB_OID_LONG_RETRY_LIMIT, &val);
		if (ret)
			goto out;

		/* Subtract 1 to convert try count to retry count */
		vwrq->value = val - 1;
		vwrq->flags = IW_RETRY_LIMIT | IW_RETRY_LONG;
	} else {
		ret = FUNC2(priv, SNMP_MIB_OID_SHORT_RETRY_LIMIT, &val);
		if (ret)
			goto out;

		/* txretry count follows the short retry limit */
		priv->txretrycount = val;
		/* Subtract 1 to convert try count to retry count */
		vwrq->value = val - 1;
		vwrq->flags = IW_RETRY_LIMIT | IW_RETRY_SHORT;
	}

out:
	FUNC1(LBS_DEB_WEXT, "ret %d", ret);
	return ret;
}