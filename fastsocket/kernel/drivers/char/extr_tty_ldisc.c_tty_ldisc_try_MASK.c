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
struct tty_struct {int /*<<< orphan*/  ldisc; int /*<<< orphan*/  flags; } ;
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_LDISC ; 
 struct tty_ldisc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tty_ldisc_lock ; 

__attribute__((used)) static struct tty_ldisc *FUNC4(struct tty_struct *tty)
{
	unsigned long flags;
	struct tty_ldisc *ld;

	FUNC1(&tty_ldisc_lock, flags);
	ld = NULL;
	if (FUNC3(TTY_LDISC, &tty->flags))
		ld = FUNC0(tty->ldisc);
	FUNC2(&tty_ldisc_lock, flags);
	return ld;
}