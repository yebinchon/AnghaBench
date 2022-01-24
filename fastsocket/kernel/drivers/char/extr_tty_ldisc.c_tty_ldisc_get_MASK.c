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
struct tty_ldisc_ops {int dummy; } ;
struct tty_ldisc {int /*<<< orphan*/  users; struct tty_ldisc_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct tty_ldisc* FUNC0 (struct tty_ldisc_ops*) ; 
 struct tty_ldisc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct tty_ldisc_ops*) ; 
 int NR_LDISCS ; 
 int N_TTY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct tty_ldisc_ops* FUNC4 (int) ; 
 struct tty_ldisc* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_ldisc_ops*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static struct tty_ldisc *FUNC8(int disc)
{
	struct tty_ldisc *ld;
	struct tty_ldisc_ops *ldops;

	if (disc < N_TTY || disc >= NR_LDISCS)
		return FUNC1(-EINVAL);

	/*
	 * Get the ldisc ops - we may need to request them to be loaded
	 * dynamically and try again.
	 */
	ldops = FUNC4(disc);
	if (FUNC2(ldops)) {
		FUNC7("tty-ldisc-%d", disc);
		ldops = FUNC4(disc);
		if (FUNC2(ldops))
			return FUNC0(ldops);
	}

	ld = FUNC5(sizeof(struct tty_ldisc), GFP_KERNEL);
	if (ld == NULL) {
		FUNC6(ldops);
		return FUNC1(-ENOMEM);
	}

	ld->ops = ldops;
	FUNC3(&ld->users, 1);
	return ld;
}