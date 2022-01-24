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
struct tty_ldisc_ops {int /*<<< orphan*/  owner; int /*<<< orphan*/  refcount; } ;
struct tty_ldisc {struct tty_ldisc_ops* ops; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tty_ldisc_lock ; 

__attribute__((used)) static void FUNC7(struct tty_ldisc *ld)
{
	unsigned long flags;

	if (FUNC0(!ld))
		return;

	/*
	 * If this is the last user, free the ldisc, and
	 * release the ldisc ops.
	 *
	 * We really want an "atomic_dec_and_lock_irqsave()",
	 * but we don't have it, so this does it by hand.
	 */
	FUNC4(flags);
	if (FUNC1(&ld->users, &tty_ldisc_lock)) {
		struct tty_ldisc_ops *ldo = ld->ops;

		ldo->refcount--;
		FUNC5(ldo->owner);
		FUNC6(&tty_ldisc_lock, flags);

		FUNC2(ld);
		return;
	}
	FUNC3(flags);
}