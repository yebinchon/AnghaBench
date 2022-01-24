#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lguest {struct lg_eventfd_map* eventfds; } ;
struct lg_eventfd_map {int num; TYPE_1__* map; } ;
struct TYPE_3__ {unsigned long addr; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct lg_eventfd_map*) ; 
 struct lg_eventfd_map* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lg_eventfd_map*,struct lg_eventfd_map*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct lguest *lg, unsigned long addr, int fd)
{
	struct lg_eventfd_map *new, *old = lg->eventfds;

	/*
	 * We don't allow notifications on value 0 anyway (pending_notify of
	 * 0 means "nothing pending").
	 */
	if (!addr)
		return -EINVAL;

	/*
	 * Replace the old array with the new one, carefully: others can
	 * be accessing it at the same time.
	 */
	new = FUNC4(sizeof(*new) + sizeof(new->map[0]) * (old->num + 1),
		      GFP_KERNEL);
	if (!new)
		return -ENOMEM;

	/* First make identical copy. */
	FUNC5(new->map, old->map, sizeof(old->map[0]) * old->num);
	new->num = old->num;

	/* Now append new entry. */
	new->map[new->num].addr = addr;
	new->map[new->num].event = FUNC2(fd);
	if (FUNC0(new->map[new->num].event)) {
		int err =  FUNC1(new->map[new->num].event);
		FUNC3(new);
		return err;
	}
	new->num++;

	/*
	 * Now put new one in place: rcu_assign_pointer() is a fancy way of
	 * doing "lg->eventfds = new", but it uses memory barriers to make
	 * absolutely sure that the contents of "new" written above is nailed
	 * down before we actually do the assignment.
	 *
	 * We have to think about these kinds of things when we're operating on
	 * live data without locks.
	 */
	FUNC6(lg->eventfds, new);

	/*
	 * We're not in a big hurry.  Wait until noone's looking at old
	 * version, then free it.
	 */
	FUNC7();
	FUNC3(old);

	return 0;
}