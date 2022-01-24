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
struct kobject {int dummy; } ;
struct device_attribute {scalar_t__ (* show ) (struct device*,struct device_attribute*,char*) ;} ;
struct device {int dummy; } ;
struct attribute {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EIO ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 scalar_t__ FUNC1 (struct device*,struct device_attribute*,char*) ; 
 struct device* FUNC2 (struct kobject*) ; 
 struct device_attribute* FUNC3 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj, struct attribute *attr,
			     char *buf)
{
	struct device_attribute *dev_attr = FUNC3(attr);
	struct device *dev = FUNC2(kobj);
	ssize_t ret = -EIO;

	if (dev_attr->show)
		ret = dev_attr->show(dev, dev_attr, buf);
	if (ret >= (ssize_t)PAGE_SIZE) {
		FUNC0("dev_attr_show: %s returned bad count\n",
				(unsigned long)dev_attr->show);
	}
	return ret;
}