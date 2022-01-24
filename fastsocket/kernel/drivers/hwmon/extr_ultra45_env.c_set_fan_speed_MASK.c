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
typedef  int u8 ;
struct env {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int FUNC0 (int) ; 
 scalar_t__ IREG_FAN0 ; 
 struct env* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct env*,scalar_t__,int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	int fan_nr = FUNC4(attr)->index;
	int rpm = FUNC3(buf, NULL, 10);
	struct env *p = FUNC1(dev);
	int period;
	u8 val;

	if (!rpm)
		return -EINVAL;

	period = FUNC0(rpm);
	val = period >> 8;
	FUNC2(p, IREG_FAN0 + fan_nr, val);

	return count;
}