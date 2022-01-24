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
struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct moxa_port*,int*,int*) ; 
 int FUNC1 (struct moxa_port*) ; 
 int TIOCM_CD ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  moxa_openlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, struct file *file)
{
	struct moxa_port *ch;
	int flag = 0, dtr, rts;

	FUNC2(&moxa_openlock);
	ch = tty->driver_data;
	if (!ch) {
		FUNC3(&moxa_openlock);
		return -EINVAL;
	}

	FUNC0(ch, &dtr, &rts);
	if (dtr)
		flag |= TIOCM_DTR;
	if (rts)
		flag |= TIOCM_RTS;
	dtr = FUNC1(ch);
	if (dtr & 1)
		flag |= TIOCM_CTS;
	if (dtr & 2)
		flag |= TIOCM_DSR;
	if (dtr & 4)
		flag |= TIOCM_CD;
	FUNC3(&moxa_openlock);
	return flag;
}