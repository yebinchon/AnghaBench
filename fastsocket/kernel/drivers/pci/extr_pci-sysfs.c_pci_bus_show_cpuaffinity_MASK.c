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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cpumask {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (char*,scalar_t__,struct cpumask const*) ; 
 struct cpumask* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,scalar_t__,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					int type,
					struct device_attribute *attr,
					char *buf)
{
	int ret;
	const struct cpumask *cpumask;

	cpumask = FUNC1(FUNC3(dev));
	ret = type ?
		FUNC0(buf, PAGE_SIZE-2, cpumask) :
		FUNC2(buf, PAGE_SIZE-2, cpumask);
	buf[ret++] = '\n';
	buf[ret] = '\0';
	return ret;
}