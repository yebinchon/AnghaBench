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
struct tty_struct {struct tty_ldisc* ldisc; } ;
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int FUNC2 (struct tty_struct*,struct tty_ldisc*) ; 

int FUNC3(struct tty_struct *tty, struct tty_struct *o_tty)
{
	struct tty_ldisc *ld = tty->ldisc;
	int retval;

	retval = FUNC2(tty, ld);
	if (retval)
		return retval;

	if (o_tty) {
		retval = FUNC2(o_tty, o_tty->ldisc);
		if (retval) {
			FUNC0(tty, ld);
			return retval;
		}
		FUNC1(o_tty);
	}
	FUNC1(tty);
	return 0;
}