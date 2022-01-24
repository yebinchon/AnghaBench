#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lock_class_key {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ktype; void* kset; } ;
struct TYPE_3__ {TYPE_2__ kobj; } ;
struct class_private {TYPE_1__ class_subsys; struct class* class; int /*<<< orphan*/  class_mutex; int /*<<< orphan*/  class_dirs; int /*<<< orphan*/  class_interfaces; int /*<<< orphan*/  class_devices; } ;
struct class {struct class_private* p; scalar_t__ dev_kobj; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct lock_class_key*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct class block_class ; 
 int /*<<< orphan*/  FUNC3 (struct class*) ; 
 void* class_kset ; 
 int /*<<< orphan*/  class_ktype ; 
 int /*<<< orphan*/  FUNC4 (struct class*) ; 
 int /*<<< orphan*/  FUNC5 (struct class_private*) ; 
 int /*<<< orphan*/  klist_class_dev_get ; 
 int /*<<< orphan*/  klist_class_dev_put ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*) ; 
 struct class_private* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ sysfs_dev_char_kobj ; 

int FUNC12(struct class *cls, struct lock_class_key *key)
{
	struct class_private *cp;
	int error;

	FUNC11("device class '%s': registering\n", cls->name);

	cp = FUNC10(sizeof(*cp), GFP_KERNEL);
	if (!cp)
		return -ENOMEM;
	FUNC6(&cp->class_devices, klist_class_dev_get, klist_class_dev_put);
	FUNC0(&cp->class_interfaces);
	FUNC8(&cp->class_dirs);
	FUNC1(&cp->class_mutex, "struct class mutex", key);
	error = FUNC7(&cp->class_subsys.kobj, "%s", cls->name);
	if (error) {
		FUNC5(cp);
		return error;
	}

	/* set the default /sys/dev directory for devices of this class */
	if (!cls->dev_kobj)
		cls->dev_kobj = sysfs_dev_char_kobj;

#if defined(CONFIG_SYSFS_DEPRECATED) && defined(CONFIG_BLOCK)
	/* let the block class directory show up in the root of sysfs */
	if (cls != &block_class)
		cp->class_subsys.kobj.kset = class_kset;
#else
	cp->class_subsys.kobj.kset = class_kset;
#endif
	cp->class_subsys.kobj.ktype = &class_ktype;
	cp->class = cls;
	cls->p = cp;

	error = FUNC9(&cp->class_subsys);
	if (error) {
		FUNC5(cp);
		return error;
	}
	error = FUNC2(FUNC3(cls));
	FUNC4(cls);
	return error;
}