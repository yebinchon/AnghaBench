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
struct tty_ldisc_ops {int /*<<< orphan*/  refcount; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 struct tty_ldisc_ops* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tty_ldisc_lock ; 
 struct tty_ldisc_ops** tty_ldiscs ; 

__attribute__((used)) static struct tty_ldisc_ops *FUNC4(int disc)
{
	unsigned long flags;
	struct tty_ldisc_ops *ldops, *ret;

	FUNC1(&tty_ldisc_lock, flags);
	ret = FUNC0(-EINVAL);
	ldops = tty_ldiscs[disc];
	if (ldops) {
		ret = FUNC0(-EAGAIN);
		if (FUNC3(ldops->owner)) {
			ldops->refcount++;
			ret = ldops;
		}
	}
	FUNC2(&tty_ldisc_lock, flags);
	return ret;
}