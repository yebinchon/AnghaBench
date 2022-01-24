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
struct ccw_device {int dummy; } ;

/* Variables and functions */
 struct dasd_device* FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

struct dasd_device *
FUNC4(struct ccw_device *cdev)
{
	struct dasd_device *device;
	unsigned long flags;

	FUNC2(FUNC1(cdev), flags);
	device = FUNC0(cdev);
	FUNC3(FUNC1(cdev), flags);
	return device;
}