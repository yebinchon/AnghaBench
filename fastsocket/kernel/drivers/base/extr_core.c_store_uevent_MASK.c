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
struct device {int /*<<< orphan*/  kobj; } ;
typedef  size_t ssize_t ;
typedef  enum kobject_action { ____Placeholder_kobject_action } kobject_action ;

/* Variables and functions */
 int KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	enum kobject_action action;

	if (FUNC1(buf, count, &action) == 0) {
		FUNC2(&dev->kobj, action);
		goto out;
	}

	FUNC0(dev, "uevent: unsupported action-string; this will "
		     "be ignored in a future kernel version\n");
	FUNC2(&dev->kobj, KOBJ_ADD);
out:
	return count;
}