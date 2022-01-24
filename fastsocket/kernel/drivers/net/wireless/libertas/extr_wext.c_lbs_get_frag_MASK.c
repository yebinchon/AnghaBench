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
typedef  scalar_t__ u16 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; int fixed; scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 scalar_t__ MRVDRV_FRAG_MAX_VALUE ; 
 scalar_t__ MRVDRV_FRAG_MIN_VALUE ; 
 int /*<<< orphan*/  SNMP_MIB_OID_FRAG_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct iw_request_info *info,
			 struct iw_param *vwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;
	int ret = 0;
	u16 val = 0;

	FUNC0(LBS_DEB_WEXT);

	ret = FUNC2(priv, SNMP_MIB_OID_FRAG_THRESHOLD, &val);
	if (ret)
		goto out;

	vwrq->value = val;
	vwrq->disabled = ((val < MRVDRV_FRAG_MIN_VALUE)
			  || (val > MRVDRV_FRAG_MAX_VALUE));
	vwrq->fixed = 1;

out:
	FUNC1(LBS_DEB_WEXT, "ret %d", ret);
	return ret;
}