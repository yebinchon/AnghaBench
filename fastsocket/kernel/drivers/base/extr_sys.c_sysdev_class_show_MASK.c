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
struct sysdev_class_attribute {int /*<<< orphan*/  (* show ) (struct sysdev_class*,char*) ;} ;
struct sysdev_class {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct sysdev_class*,char*) ; 
 struct sysdev_class* FUNC1 (struct kobject*) ; 
 struct sysdev_class_attribute* FUNC2 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj, struct attribute *attr,
				 char *buffer)
{
	struct sysdev_class *class = FUNC1(kobj);
	struct sysdev_class_attribute *class_attr = FUNC2(attr);

	if (class_attr->show)
		return class_attr->show(class, buffer);
	return -EIO;
}