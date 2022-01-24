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
struct device_driver {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EPERM ; 
 int /*<<< orphan*/  fan_control_allowed ; 
 unsigned long fan_watchdog_maxinterval ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC3(struct device_driver *drv,
				      const char *buf, size_t count)
{
	unsigned long t;

	if (FUNC1(buf, 120, &t))
		return -EINVAL;

	if (!fan_control_allowed)
		return -EPERM;

	fan_watchdog_maxinterval = t;
	FUNC0();

	FUNC2("fan_watchdog", "set to %lu\n", t);

	return count;
}