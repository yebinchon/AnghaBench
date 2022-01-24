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
struct sys_device {int id; int /*<<< orphan*/  kobj; } ;
struct cpuidle_device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  cpuidle_devices ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ktype_cpuidle ; 
 struct cpuidle_device* FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct sys_device *sysdev)
{
	int cpu = sysdev->id;
	struct cpuidle_device *dev;
	int error;

	dev = FUNC2(cpuidle_devices, cpu);
	error = FUNC0(&dev->kobj, &ktype_cpuidle, &sysdev->kobj,
				     "cpuidle");
	if (!error)
		FUNC1(&dev->kobj, KOBJ_ADD);
	return error;
}