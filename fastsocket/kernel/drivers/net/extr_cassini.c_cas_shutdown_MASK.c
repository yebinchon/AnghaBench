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
struct cas {int cas_flags; int /*<<< orphan*/  reset_task_pending; int /*<<< orphan*/  reset_task_pending_all; int /*<<< orphan*/  reset_task_pending_spare; int /*<<< orphan*/  reset_task_pending_mtu; int /*<<< orphan*/  link_timer; scalar_t__ hw_running; } ;

/* Variables and functions */
 int CAS_FLAG_SATURN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct cas*) ; 
 int /*<<< orphan*/  FUNC3 (struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cas*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct cas *cp)
{
	unsigned long flags;

	/* Make us not-running to avoid timers respawning */
	cp->hw_running = 0;

	FUNC5(&cp->link_timer);

	/* Stop the reset task */
#if 0
	while (atomic_read(&cp->reset_task_pending_mtu) ||
	       atomic_read(&cp->reset_task_pending_spare) ||
	       atomic_read(&cp->reset_task_pending_all))
		schedule();

#else
	while (FUNC0(&cp->reset_task_pending))
		FUNC6();
#endif
	/* Actually stop the chip */
	FUNC1(cp, flags);
	FUNC3(cp, 0);
	if (cp->cas_flags & CAS_FLAG_SATURN)
		FUNC2(cp);
	FUNC4(cp, flags);
}