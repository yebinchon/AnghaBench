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
struct gigaset_ops {int dummy; } ;
struct gigaset_driver {unsigned int minor; unsigned int minors; unsigned int minor_index; struct gigaset_driver* cs; int /*<<< orphan*/  list; int /*<<< orphan*/  mutex; struct gigaset_ops const* ops; struct gigaset_driver* driver; scalar_t__ flags; struct module* owner; scalar_t__ blocked; int /*<<< orphan*/  lock; scalar_t__ have_tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  driver_lock ; 
 int /*<<< orphan*/  drivers ; 
 int /*<<< orphan*/  FUNC1 (struct gigaset_driver*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct gigaset_driver*) ; 
 void* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

struct gigaset_driver *FUNC9(unsigned minor, unsigned minors,
					  const char *procname,
					  const char *devname,
					  const struct gigaset_ops *ops,
					  struct module *owner)
{
	struct gigaset_driver *drv;
	unsigned long flags;
	unsigned i;

	drv = FUNC3(sizeof *drv, GFP_KERNEL);
	if (!drv)
		return NULL;

	drv->have_tty = 0;
	drv->minor = minor;
	drv->minors = minors;
	FUNC6(&drv->lock);
	drv->blocked = 0;
	drv->ops = ops;
	drv->owner = owner;
	FUNC0(&drv->list);

	drv->cs = FUNC3(minors * sizeof *drv->cs, GFP_KERNEL);
	if (!drv->cs)
		goto error;

	for (i = 0; i < minors; ++i) {
		drv->cs[i].flags = 0;
		drv->cs[i].driver = drv;
		drv->cs[i].ops = drv->ops;
		drv->cs[i].minor_index = i;
		FUNC5(&drv->cs[i].mutex);
	}

	FUNC1(drv, procname, devname);

	FUNC7(&driver_lock, flags);
	FUNC4(&drv->list, &drivers);
	FUNC8(&driver_lock, flags);

	return drv;

error:
	FUNC2(drv->cs);
	FUNC2(drv);
	return NULL;
}