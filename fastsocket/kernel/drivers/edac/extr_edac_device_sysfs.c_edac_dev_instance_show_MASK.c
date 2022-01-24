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
struct instance_attribute {int /*<<< orphan*/  (* show ) (struct edac_device_instance*,char*) ;} ;
struct edac_device_instance {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct edac_device_instance*,char*) ; 
 struct edac_device_instance* FUNC1 (struct kobject*) ; 
 struct instance_attribute* FUNC2 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
				struct attribute *attr, char *buffer)
{
	struct edac_device_instance *instance = FUNC1(kobj);
	struct instance_attribute *instance_attr = FUNC2(attr);

	if (instance_attr->show)
		return instance_attr->show(instance, buffer);
	return -EIO;
}