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
struct dasd_eckd_private {int /*<<< orphan*/  gneq; int /*<<< orphan*/  ned; } ;
struct dasd_device {int /*<<< orphan*/  cdev; scalar_t__ private; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_eckd_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct dasd_device *device)
{
	struct dasd_eckd_private *private;
	unsigned long flags;

	private = (struct dasd_eckd_private *) device->private;
	if (!private)
		return -ENODEV;
	if (!private->ned || !private->gneq)
		return -ENODEV;
	FUNC2(FUNC1(device->cdev), flags);
	FUNC0(private);
	FUNC3(FUNC1(device->cdev), flags);
	return 0;
}