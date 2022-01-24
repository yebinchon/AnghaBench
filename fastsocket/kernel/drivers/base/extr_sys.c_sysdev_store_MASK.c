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
struct sysdev_attribute {int /*<<< orphan*/  (* store ) (struct sys_device*,struct sysdev_attribute*,char const*,size_t) ;} ;
struct sys_device {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct sys_device*,struct sysdev_attribute*,char const*,size_t) ; 
 struct sys_device* FUNC1 (struct kobject*) ; 
 struct sysdev_attribute* FUNC2 (struct attribute*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct kobject *kobj, struct attribute *attr,
	     const char *buffer, size_t count)
{
	struct sys_device *sysdev = FUNC1(kobj);
	struct sysdev_attribute *sysdev_attr = FUNC2(attr);

	if (sysdev_attr->store)
		return sysdev_attr->store(sysdev, sysdev_attr, buffer, count);
	return -EIO;
}