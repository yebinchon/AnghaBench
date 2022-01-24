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
struct tty_struct {int /*<<< orphan*/ * ldisc; } ;
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,int /*<<< orphan*/ *) ; 
 struct tty_ldisc* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,int) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty, int ldisc)
{
	struct tty_ldisc *ld = FUNC3(ldisc);

	if (FUNC0(ld))
		return -1;

	FUNC2(tty, tty->ldisc);
	FUNC4(tty->ldisc);
	tty->ldisc = NULL;
	/*
	 *	Switch the line discipline back
	 */
	FUNC1(tty, ld);
	FUNC5(tty, ldisc);

	return 0;
}