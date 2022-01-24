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
struct tty_struct {TYPE_1__* ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  atomic_write_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write ) (struct tty_struct*,char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_CLOSING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct tty_struct *tty, char *msg)
{
	FUNC0();
	if (tty) {
		FUNC1(&tty->atomic_write_lock);
		if (tty->ops->write && !FUNC4(TTY_CLOSING, &tty->flags))
			tty->ops->write(tty, msg, FUNC2(msg));
		FUNC5(tty);
	}
	FUNC6();
	return;
}