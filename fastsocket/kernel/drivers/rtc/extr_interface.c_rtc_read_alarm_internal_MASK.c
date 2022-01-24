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
struct rtc_wkalrm {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct rtc_device {int /*<<< orphan*/  ops_lock; TYPE_1__ dev; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* read_alarm ) (int /*<<< orphan*/ ,struct rtc_wkalrm*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_wkalrm*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct rtc_wkalrm*) ; 

__attribute__((used)) static int FUNC4(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
	int err;

	err = FUNC1(&rtc->ops_lock);
	if (err)
		return err;

	if (rtc->ops == NULL)
		err = -ENODEV;
	else if (!rtc->ops->read_alarm)
		err = -EINVAL;
	else {
		FUNC0(alarm, 0, sizeof(struct rtc_wkalrm));
		err = rtc->ops->read_alarm(rtc->dev.parent, alarm);
	}

	FUNC2(&rtc->ops_lock);
	return err;
}