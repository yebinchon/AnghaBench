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
struct iw_param {int value; int /*<<< orphan*/  fixed; } ;

/* Variables and functions */
 short ZD1201_RATEB1 ; 
 short ZD1201_RATEB11 ; 
 short ZD1201_RATEB2 ; 
 short ZD1201_RATEB5 ; 
 int /*<<< orphan*/  ZD1201_RID_TXRATECNTL ; 
 struct zd1201* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct zd1201*) ; 
 int FUNC2 (struct zd1201*,int /*<<< orphan*/ ,short) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
    struct iw_request_info *info, struct iw_param *rrq, char *extra)
{
	struct zd1201 *zd = FUNC0(dev);
	short rate;
	int err;

	switch (rrq->value) {
		case 1000000:
			rate = ZD1201_RATEB1;
			break;
		case 2000000:
			rate = ZD1201_RATEB2;
			break;
		case 5500000:
			rate = ZD1201_RATEB5;
			break;
		case 11000000:
		default:
			rate = ZD1201_RATEB11;
			break;
	}
	if (!rrq->fixed) { /* Also enable all lower bitrates */
		rate |= rate-1;
	}

	err = FUNC2(zd, ZD1201_RID_TXRATECNTL, rate);
	if (err)
		return err;

	return FUNC1(zd);
}