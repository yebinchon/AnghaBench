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
struct class_private {int /*<<< orphan*/  class; } ;
struct class_attribute {int /*<<< orphan*/  (* show ) (int /*<<< orphan*/ ,char*) ;} ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct class_private* FUNC1 (struct kobject*) ; 
 struct class_attribute* FUNC2 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj, struct attribute *attr,
			       char *buf)
{
	struct class_attribute *class_attr = FUNC2(attr);
	struct class_private *cp = FUNC1(kobj);
	ssize_t ret = -EIO;

	if (class_attr->show)
		ret = class_attr->show(cp->class, buf);
	return ret;
}