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
struct orinoco_private {int bitratemode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int /*<<< orphan*/  fixed; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 struct orinoco_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct orinoco_private*,unsigned long*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				 struct iw_request_info *info,
				 struct iw_param *rrq,
				 char *extra)
{
	struct orinoco_private *priv = FUNC0(dev);
	int ratemode;
	int bitrate; /* 100s of kilobits */
	unsigned long flags;

	/* As the user space doesn't know our highest rate, it uses -1
	 * to ask us to set the highest rate.  Test it using "iwconfig
	 * ethX rate auto" - Jean II */
	if (rrq->value == -1)
		bitrate = 110;
	else {
		if (rrq->value % 100000)
			return -EINVAL;
		bitrate = rrq->value / 100000;
	}

	ratemode = FUNC1(bitrate, !rrq->fixed);

	if (ratemode == -1)
		return -EINVAL;

	if (FUNC2(priv, &flags) != 0)
		return -EBUSY;
	priv->bitratemode = ratemode;
	FUNC3(priv, &flags);

	return -EINPROGRESS;
}