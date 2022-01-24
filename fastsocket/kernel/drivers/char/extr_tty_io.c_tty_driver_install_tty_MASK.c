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
struct tty_struct {int index; int /*<<< orphan*/  count; } ;
struct tty_driver {struct tty_struct** ttys; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* install ) (struct tty_driver*,struct tty_struct*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct tty_driver*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_driver*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC3(struct tty_driver *driver,
						struct tty_struct *tty)
{
	int idx = tty->index;

	if (driver->ops->install)
		return driver->ops->install(driver, tty);

	if (FUNC2(tty) == 0) {
		FUNC1(driver);
		tty->count++;
		driver->ttys[idx] = tty;
		return 0;
	}
	return -ENOMEM;
}