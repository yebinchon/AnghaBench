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
struct sys_device {int /*<<< orphan*/ * cls; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  attr_hibernate ; 
 int /*<<< orphan*/  suspend_sysdev_class ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sys_device *sysdev)
{
	int rc;

	if ((rc = FUNC1(&suspend_sysdev_class)))
		return rc;

	sysdev->id = 0;
	sysdev->cls = &suspend_sysdev_class;

	if ((rc = FUNC0(&suspend_sysdev_class, &attr_hibernate)))
		goto class_unregister;

	return 0;

class_unregister:
	FUNC2(&suspend_sysdev_class);
	return rc;
}