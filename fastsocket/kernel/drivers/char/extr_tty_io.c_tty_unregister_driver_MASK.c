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
struct tty_driver {int /*<<< orphan*/  tty_drivers; int /*<<< orphan*/  num; int /*<<< orphan*/  minor_start; int /*<<< orphan*/  major; scalar_t__ refcount; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tty_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct tty_driver *driver)
{
#if 0
	/* FIXME */
	if (driver->refcount)
		return -EBUSY;
#endif
	FUNC4(FUNC0(driver->major, driver->minor_start),
				driver->num);
	FUNC2(&tty_mutex);
	FUNC1(&driver->tty_drivers);
	FUNC3(&tty_mutex);
	return 0;
}