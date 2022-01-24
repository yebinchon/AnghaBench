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
struct tty_struct {int index; struct ktermios* termios; struct ktermios* termios_locked; TYPE_1__* driver; } ;
struct ktermios {int /*<<< orphan*/  c_ospeed; int /*<<< orphan*/  c_ispeed; } ;
struct TYPE_2__ {struct ktermios** termios; int /*<<< orphan*/  init_termios; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ktermios* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ktermios*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC3 (struct ktermios*) ; 

int FUNC4(struct tty_struct *tty)
{
	struct ktermios *tp;
	int idx = tty->index;

	tp = tty->driver->termios[idx];
	if (tp == NULL) {
		tp = FUNC0(sizeof(struct ktermios[2]), GFP_KERNEL);
		if (tp == NULL)
			return -ENOMEM;
		FUNC1(tp, &tty->driver->init_termios,
						sizeof(struct ktermios));
		tty->driver->termios[idx] = tp;
	}
	tty->termios = tp;
	tty->termios_locked = tp + 1;

	/* Compatibility until drivers always set this */
	tty->termios->c_ispeed = FUNC3(tty->termios);
	tty->termios->c_ospeed = FUNC2(tty->termios);
	return 0;
}