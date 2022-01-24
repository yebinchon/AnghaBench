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
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; } ;
struct root_device {struct device dev; struct module* owner; } ;
struct module_kobject {int /*<<< orphan*/  kobj; } ;
struct module {struct module_kobject mkobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct device*,char*,char const*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct root_device*) ; 
 struct root_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  root_device_release ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

struct device *FUNC8(const char *name, struct module *owner)
{
	struct root_device *root;
	int err = -ENOMEM;

	root = FUNC5(sizeof(struct root_device), GFP_KERNEL);
	if (!root)
		return FUNC0(err);

	err = FUNC1(&root->dev, "%s", name);
	if (err) {
		FUNC4(root);
		return FUNC0(err);
	}

	root->dev.release = root_device_release;

	err = FUNC2(&root->dev);
	if (err) {
		FUNC6(&root->dev);
		return FUNC0(err);
	}

#ifdef CONFIG_MODULE	/* gotta find a "cleaner" way to do this */
	if (owner) {
		struct module_kobject *mk = &owner->mkobj;

		err = sysfs_create_link(&root->dev.kobj, &mk->kobj, "module");
		if (err) {
			device_unregister(&root->dev);
			return ERR_PTR(err);
		}
		root->owner = owner;
	}
#endif

	return &root->dev;
}