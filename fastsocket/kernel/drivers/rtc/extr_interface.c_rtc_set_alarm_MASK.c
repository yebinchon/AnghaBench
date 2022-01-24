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
struct rtc_wkalrm {int /*<<< orphan*/  time; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct rtc_device {int /*<<< orphan*/  ops_lock; TYPE_1__ dev; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* set_alarm ) (int /*<<< orphan*/ ,struct rtc_wkalrm*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct rtc_wkalrm*) ; 

int FUNC4(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
	int err;

	err = FUNC2(&alarm->time);
	if (err != 0)
		return err;

	err = FUNC0(&rtc->ops_lock);
	if (err)
		return err;

	if (!rtc->ops)
		err = -ENODEV;
	else if (!rtc->ops->set_alarm)
		err = -EINVAL;
	else
		err = rtc->ops->set_alarm(rtc->dev.parent, alarm);

	FUNC1(&rtc->ops_lock);
	return err;
}