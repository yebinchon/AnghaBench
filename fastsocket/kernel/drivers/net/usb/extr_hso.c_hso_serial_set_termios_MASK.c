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
struct tty_struct {struct ktermios* termios; } ;
struct ktermios {int /*<<< orphan*/  c_cflag; } ;
struct hso_serial {int /*<<< orphan*/  serial_lock; scalar_t__ open_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct ktermios*) ; 
 struct hso_serial* FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty, struct ktermios *old)
{
	struct hso_serial *serial = FUNC2(tty);
	unsigned long flags;

	if (old)
		FUNC0("Termios called with: cflags new[%d] - old[%d]",
		   tty->termios->c_cflag, old->c_cflag);

	/* the actual setup */
	FUNC3(&serial->serial_lock, flags);
	if (serial->open_count)
		FUNC1(tty, old);
	else
		tty->termios = old;
	FUNC4(&serial->serial_lock, flags);

	/* done */
	return;
}