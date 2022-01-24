#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lguest {unsigned int nr_cpus; unsigned int num; struct lguest* dead; struct lguest* eventfds; TYPE_2__* map; TYPE_1__* cpus; } ;
struct inode {int dummy; } ;
struct file {struct lguest* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  event; } ;
struct TYPE_3__ {int /*<<< orphan*/  mm; int /*<<< orphan*/  regs_page; int /*<<< orphan*/  hrt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lguest*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lguest*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lguest*) ; 
 int /*<<< orphan*/  lguest_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct lguest *lg = file->private_data;
	unsigned int i;

	/* If we never successfully initialized, there's nothing to clean up */
	if (!lg)
		return 0;

	/*
	 * We need the big lock, to protect from inter-guest I/O and other
	 * Launchers initializing guests.
	 */
	FUNC7(&lguest_lock);

	/* Free up the shadow page tables for the Guest. */
	FUNC2(lg);

	for (i = 0; i < lg->nr_cpus; i++) {
		/* Cancels the hrtimer set via LHCALL_SET_CLOCKEVENT. */
		FUNC4(&lg->cpus[i].hrt);
		/* We can free up the register page we allocated. */
		FUNC3(lg->cpus[i].regs_page);
		/*
		 * Now all the memory cleanups are done, it's safe to release
		 * the Launcher's memory management structure.
		 */
		FUNC6(lg->cpus[i].mm);
	}

	/* Release any eventfds they registered. */
	for (i = 0; i < lg->eventfds->num; i++)
		FUNC1(lg->eventfds->map[i].event);
	FUNC5(lg->eventfds);

	/*
	 * If lg->dead doesn't contain an error code it will be NULL or a
	 * kmalloc()ed string, either of which is ok to hand to kfree().
	 */
	if (!FUNC0(lg->dead))
		FUNC5(lg->dead);
	/* Free the memory allocated to the lguest_struct */
	FUNC5(lg);
	/* Release lock and exit. */
	FUNC8(&lguest_lock);

	return 0;
}