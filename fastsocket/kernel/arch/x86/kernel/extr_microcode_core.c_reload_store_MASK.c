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
struct sysdev_attribute {int dummy; } ;
struct sys_device {int id; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 unsigned long FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct sys_device *dev,
			    struct sysdev_attribute *attr,
			    const char *buf, size_t size)
{
	unsigned long val;
	int cpu = dev->id;
	int ret = 0;
	char *end;

	val = FUNC4(buf, &end, 0);
	if (end == buf)
		return -EINVAL;

	if (val == 1) {
		FUNC1();
		if (FUNC0(cpu))
			ret = FUNC3(cpu);
		FUNC2();
	}

	if (!ret)
		ret = size;

	return ret;
}