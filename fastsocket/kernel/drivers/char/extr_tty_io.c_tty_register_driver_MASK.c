#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct tty_driver {int flags; int num; int /*<<< orphan*/  tty_drivers; struct ktermios** termios; struct tty_struct** ttys; TYPE_1__ cdev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; int /*<<< orphan*/  minor_start; scalar_t__ major; } ;
struct ktermios {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int TTY_DRIVER_DEVPTS_MEM ; 
 int TTY_DRIVER_DYNAMIC_DEV ; 
 int TTY_DRIVER_INSTALLED ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 
 void** FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_driver*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tty_drivers ; 
 int /*<<< orphan*/  tty_fops ; 
 int /*<<< orphan*/  tty_mutex ; 
 int /*<<< orphan*/  FUNC13 (struct tty_driver*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

int FUNC15(struct tty_driver *driver)
{
	int error;
	int i;
	dev_t dev;
	void **p = NULL;

	if (!(driver->flags & TTY_DRIVER_DEVPTS_MEM) && driver->num) {
		p = FUNC7(driver->num * 2 * sizeof(void *), GFP_KERNEL);
		if (!p)
			return -ENOMEM;
	}

	if (!driver->major) {
		error = FUNC3(&dev, driver->minor_start,
						driver->num, driver->name);
		if (!error) {
			driver->major = FUNC0(dev);
			driver->minor_start = FUNC1(dev);
		}
	} else {
		dev = FUNC2(driver->major, driver->minor_start);
		error = FUNC12(dev, driver->num, driver->name);
	}
	if (error < 0) {
		FUNC6(p);
		return error;
	}

	if (p) {
		driver->ttys = (struct tty_struct **)p;
		driver->termios = (struct ktermios **)(p + driver->num);
	} else {
		driver->ttys = NULL;
		driver->termios = NULL;
	}

	FUNC5(&driver->cdev, &tty_fops);
	driver->cdev.owner = driver->owner;
	error = FUNC4(&driver->cdev, dev, driver->num);
	if (error) {
		FUNC14(dev, driver->num);
		driver->ttys = NULL;
		driver->termios = NULL;
		FUNC6(p);
		return error;
	}

	FUNC9(&tty_mutex);
	FUNC8(&driver->tty_drivers, &tty_drivers);
	FUNC10(&tty_mutex);

	if (!(driver->flags & TTY_DRIVER_DYNAMIC_DEV)) {
		for (i = 0; i < driver->num; i++)
		    FUNC13(driver, i, NULL);
	}
	FUNC11(driver);
	driver->flags |= TTY_DRIVER_INSTALLED;
	return 0;
}