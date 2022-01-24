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
struct intel_menlow_attribute {int /*<<< orphan*/  handle; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long*) ; 
 int FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 struct intel_menlow_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			 struct device_attribute *dev_attr, char *buf)
{
	struct intel_menlow_attribute *attr = FUNC3(dev_attr);
	unsigned long long value;
	int result;

	result = FUNC1(attr->handle, 0, &value);

	return result ? result : FUNC2(buf, "%lu", FUNC0(value));
}