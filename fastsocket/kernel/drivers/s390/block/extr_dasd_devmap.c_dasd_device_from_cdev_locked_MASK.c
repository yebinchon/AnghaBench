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
struct dasd_device {int dummy; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct dasd_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 struct dasd_device* FUNC2 (int /*<<< orphan*/ *) ; 

struct dasd_device *
FUNC3(struct ccw_device *cdev)
{
	struct dasd_device *device = FUNC2(&cdev->dev);

	if (!device)
		return FUNC0(-ENODEV);
	FUNC1(device);
	return device;
}