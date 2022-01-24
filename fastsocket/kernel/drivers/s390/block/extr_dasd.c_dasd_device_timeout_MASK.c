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
struct dasd_device {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STOPPED_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long ptr)
{
	unsigned long flags;
	struct dasd_device *device;

	device = (struct dasd_device *) ptr;
	FUNC3(FUNC2(device->cdev), flags);
	/* re-activate request queue */
	FUNC0(device, DASD_STOPPED_PENDING);
	FUNC4(FUNC2(device->cdev), flags);
	FUNC1(device);
}