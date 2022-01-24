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
struct device {int dummy; } ;
struct class_interface {int /*<<< orphan*/  (* add_dev ) (struct device*,struct class_interface*) ;int /*<<< orphan*/  node; int /*<<< orphan*/  class; } ;
struct class_dev_iter {int dummy; } ;
struct class {TYPE_1__* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  class_mutex; int /*<<< orphan*/  class_interfaces; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct class_dev_iter*) ; 
 int /*<<< orphan*/  FUNC1 (struct class_dev_iter*,struct class*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct device* FUNC2 (struct class_dev_iter*) ; 
 struct class* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct class_interface*) ; 

int FUNC8(struct class_interface *class_intf)
{
	struct class *parent;
	struct class_dev_iter iter;
	struct device *dev;

	if (!class_intf || !class_intf->class)
		return -ENODEV;

	parent = FUNC3(class_intf->class);
	if (!parent)
		return -EINVAL;

	FUNC5(&parent->p->class_mutex);
	FUNC4(&class_intf->node, &parent->p->class_interfaces);
	if (class_intf->add_dev) {
		FUNC1(&iter, parent, NULL, NULL);
		while ((dev = FUNC2(&iter)))
			class_intf->add_dev(dev, class_intf);
		FUNC0(&iter);
	}
	FUNC6(&parent->p->class_mutex);

	return 0;
}