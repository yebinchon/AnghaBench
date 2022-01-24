#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_7__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_2__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ccw_device_timeout ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

void
FUNC4(struct ccw_device *cdev, int expires)
{
	if (expires == 0) {
		FUNC1(&cdev->private->timer);
		return;
	}
	if (FUNC3(&cdev->private->timer)) {
		if (FUNC2(&cdev->private->timer, jiffies + expires))
			return;
	}
	cdev->private->timer.function = ccw_device_timeout;
	cdev->private->timer.data = (unsigned long) cdev;
	cdev->private->timer.expires = jiffies + expires;
	FUNC0(&cdev->private->timer);
}