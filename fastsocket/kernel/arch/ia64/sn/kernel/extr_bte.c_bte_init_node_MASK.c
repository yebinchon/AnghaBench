#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_7__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_1__* bte_if; TYPE_3__ bte_recovery_timer; int /*<<< orphan*/  bte_recovery_lock; } ;
typedef  TYPE_2__ nodepda_t ;
typedef  int /*<<< orphan*/  cnodeid_t ;
struct TYPE_5__ {int bte_num; scalar_t__ bh_error; scalar_t__ cleanup_active; scalar_t__ bte_error_count; int /*<<< orphan*/  bte_cnode; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  notify; int /*<<< orphan*/ * most_rcnt_na; int /*<<< orphan*/  bte_notify_addr; int /*<<< orphan*/  bte_control_addr; int /*<<< orphan*/  bte_destination_addr; int /*<<< orphan*/  bte_source_addr; int /*<<< orphan*/ * bte_base_addr; } ;

/* Variables and functions */
 int BTES_PER_NODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BTE_WORD_AVAILABLE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bte_error_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(nodepda_t * mynodepda, cnodeid_t cnode)
{
	int i;

	/*
	 * Indicate that all the block transfer engines on this node
	 * are available.
	 */

	/*
	 * Allocate one bte_recover_t structure per node.  It holds
	 * the recovery lock for node.  All the bte interface structures
	 * will point at this one bte_recover structure to get the lock.
	 */
	FUNC8(&mynodepda->bte_recovery_lock);
	FUNC7(&mynodepda->bte_recovery_timer);
	mynodepda->bte_recovery_timer.function = bte_error_handler;
	mynodepda->bte_recovery_timer.data = (unsigned long)mynodepda;

	for (i = 0; i < BTES_PER_NODE; i++) {
		u64 *base_addr;

		/* Which link status register should we use? */
		base_addr = (u64 *)
		    FUNC5(FUNC6(cnode), FUNC0(i));
		mynodepda->bte_if[i].bte_base_addr = base_addr;
		mynodepda->bte_if[i].bte_source_addr = FUNC4(base_addr);
		mynodepda->bte_if[i].bte_destination_addr = FUNC2(base_addr);
		mynodepda->bte_if[i].bte_control_addr = FUNC1(base_addr);
		mynodepda->bte_if[i].bte_notify_addr = FUNC3(base_addr);

		/*
		 * Initialize the notification and spinlock
		 * so the first transfer can occur.
		 */
		mynodepda->bte_if[i].most_rcnt_na =
		    &(mynodepda->bte_if[i].notify);
		mynodepda->bte_if[i].notify = BTE_WORD_AVAILABLE;
		FUNC8(&mynodepda->bte_if[i].spinlock);

		mynodepda->bte_if[i].bte_cnode = cnode;
		mynodepda->bte_if[i].bte_error_count = 0;
		mynodepda->bte_if[i].bte_num = i;
		mynodepda->bte_if[i].cleanup_active = 0;
		mynodepda->bte_if[i].bh_error = 0;
	}

}