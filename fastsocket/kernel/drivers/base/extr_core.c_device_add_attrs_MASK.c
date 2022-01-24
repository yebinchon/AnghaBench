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
struct device_type {int /*<<< orphan*/  groups; } ;
struct device {int /*<<< orphan*/  groups; struct device_type* type; struct class* class; } ;
struct class {int /*<<< orphan*/  dev_attrs; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct class *class = dev->class;
	struct device_type *type = dev->type;
	int error;

	if (class) {
		error = FUNC0(dev, class->dev_attrs);
		if (error)
			return error;
	}

	if (type) {
		error = FUNC1(dev, type->groups);
		if (error)
			goto err_remove_class_attrs;
	}

	error = FUNC1(dev, dev->groups);
	if (error)
		goto err_remove_type_groups;

	return 0;

 err_remove_type_groups:
	if (type)
		FUNC3(dev, type->groups);
 err_remove_class_attrs:
	if (class)
		FUNC2(dev, class->dev_attrs);

	return error;
}