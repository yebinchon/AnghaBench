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
struct sysdev_class {int dummy; } ;
struct cpuidle_driver {char* name; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  cpuidle_driver_lock ; 
 struct cpuidle_driver* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC4(struct sysdev_class *class,
				   char *buf)
{
	ssize_t ret;
	struct cpuidle_driver *cpuidle_driver = FUNC0();

	FUNC1(&cpuidle_driver_lock);
	if (cpuidle_driver)
		ret = FUNC3(buf, "%s\n", cpuidle_driver->name);
	else
		ret = FUNC3(buf, "none\n");
	FUNC2(&cpuidle_driver_lock);

	return ret;
}