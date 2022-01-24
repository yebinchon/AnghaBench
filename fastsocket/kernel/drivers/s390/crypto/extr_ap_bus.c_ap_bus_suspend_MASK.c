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
struct device {int dummy; } ;
struct ap_device {int unregistered; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ap_device*,unsigned long*) ; 
 int /*<<< orphan*/  ap_config_timer ; 
 int ap_suspend_flag ; 
 int /*<<< orphan*/  ap_tasklet ; 
 int /*<<< orphan*/ * ap_work_queue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ap_device* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, pm_message_t state)
{
	struct ap_device *ap_dev = FUNC6(dev);
	unsigned long flags;

	if (!ap_suspend_flag) {
		ap_suspend_flag = 1;

		/* Disable scanning for devices, thus we do not want to scan
		 * for them after removing.
		 */
		FUNC1(&ap_config_timer);
		if (ap_work_queue != NULL) {
			FUNC2(ap_work_queue);
			ap_work_queue = NULL;
		}

		FUNC5(&ap_tasklet);
	}
	/* Poll on the device until all requests are finished. */
	do {
		flags = 0;
		FUNC3(&ap_dev->lock);
		FUNC0(ap_dev, &flags);
		FUNC4(&ap_dev->lock);
	} while ((flags & 1) || (flags & 2));

	FUNC3(&ap_dev->lock);
	ap_dev->unregistered = 1;
	FUNC4(&ap_dev->lock);

	return 0;
}