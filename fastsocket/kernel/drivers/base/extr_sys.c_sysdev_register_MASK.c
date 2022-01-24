#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct sysdev_class {TYPE_1__ kset; } ;
struct sys_device {struct sysdev_class* cls; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sys_device*) ; 
 scalar_t__ FUNC3 (struct sys_device*) ; 

int FUNC4(struct sys_device *sysdev)
{
	struct sysdev_class *cls = sysdev->cls;

	if (FUNC3(sysdev))
		return -EINVAL;

	FUNC1("Registering sys device of class '%s'\n",
		 FUNC0(&cls->kset.kobj));

	return FUNC2(sysdev);
}