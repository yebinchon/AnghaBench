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
struct ap_driver {int /*<<< orphan*/  (* remove ) (struct ap_device*) ;} ;
struct ap_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue_count; int /*<<< orphan*/  list; int /*<<< orphan*/  timeout; struct ap_driver* drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ap_device_list_lock ; 
 int /*<<< orphan*/  FUNC0 (struct ap_device*) ; 
 int /*<<< orphan*/  ap_poll_requests ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ap_device*) ; 
 struct ap_device* FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct ap_device *ap_dev = FUNC7(dev);
	struct ap_driver *ap_drv = ap_dev->drv;

	FUNC0(ap_dev);
	FUNC2(&ap_dev->timeout);
	FUNC4(&ap_device_list_lock);
	FUNC3(&ap_dev->list);
	FUNC5(&ap_device_list_lock);
	if (ap_drv->remove)
		ap_drv->remove(ap_dev);
	FUNC4(&ap_dev->lock);
	FUNC1(ap_dev->queue_count, &ap_poll_requests);
	FUNC5(&ap_dev->lock);
	return 0;
}