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
struct zd1201 {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; short value; scalar_t__ disabled; } ;

/* Variables and functions */
 int EINVAL ; 
 int IW_POWER_PERIOD ; 
 int IW_POWER_TIMEOUT ; 
 int /*<<< orphan*/  ZD1201_RID_CNFMAXSLEEPDURATION ; 
 int /*<<< orphan*/  ZD1201_RID_CNFPMENABLED ; 
 int /*<<< orphan*/  ZD1201_RID_CNFPMEPS ; 
 struct zd1201* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct zd1201*,int /*<<< orphan*/ ,short*) ; 
 int FUNC2 (struct zd1201*,int /*<<< orphan*/ ,short) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, 
    struct iw_request_info *info, struct iw_param *vwrq, char *extra)
{
	struct zd1201 *zd = FUNC0(dev);
	short enabled, duration, level;
	int err;

	enabled = vwrq->disabled ? 0 : 1;
	if (enabled) {
		if (vwrq->flags & IW_POWER_PERIOD) {
			duration = vwrq->value;
			err = FUNC2(zd, 
			    ZD1201_RID_CNFMAXSLEEPDURATION, duration);
			if (err)
				return err;
			goto out;
		}
		if (vwrq->flags & IW_POWER_TIMEOUT) {
			err = FUNC1(zd, 
			    ZD1201_RID_CNFMAXSLEEPDURATION, &duration);
			if (err)
				return err;
			level = vwrq->value * 4 / duration;
			if (level > 4)
				level = 4;
			if (level < 0)
				level = 0;
			err = FUNC2(zd, ZD1201_RID_CNFPMEPS,
			    level);
			if (err)
				return err;
			goto out;
		}
		return -EINVAL;
	}
out:
	return FUNC2(zd, ZD1201_RID_CNFPMENABLED, enabled);
}