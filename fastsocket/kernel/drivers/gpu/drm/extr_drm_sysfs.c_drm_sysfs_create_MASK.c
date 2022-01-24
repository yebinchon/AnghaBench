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
struct module {int dummy; } ;
struct class {int /*<<< orphan*/  devnode; int /*<<< orphan*/  resume; int /*<<< orphan*/  suspend; } ;

/* Variables and functions */
 struct class* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct class*) ; 
 int FUNC2 (struct class*) ; 
 int /*<<< orphan*/  class_attr_version ; 
 struct class* FUNC3 (struct module*,char*) ; 
 int FUNC4 (struct class*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct class*) ; 
 int /*<<< orphan*/  drm_class_resume ; 
 int /*<<< orphan*/  drm_class_suspend ; 
 int /*<<< orphan*/  drm_devnode ; 

struct class *FUNC6(struct module *owner, char *name)
{
	struct class *class;
	int err;

	class = FUNC3(owner, name);
	if (FUNC1(class)) {
		err = FUNC2(class);
		goto err_out;
	}

	class->suspend = drm_class_suspend;
	class->resume = drm_class_resume;

	err = FUNC4(class, &class_attr_version);
	if (err)
		goto err_out_class;

	class->devnode = drm_devnode;

	return class;

err_out_class:
	FUNC5(class);
err_out:
	return FUNC0(err);
}