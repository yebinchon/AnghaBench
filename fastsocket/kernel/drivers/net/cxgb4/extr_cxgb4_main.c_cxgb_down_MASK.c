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
struct adapter {int tid_release_task_busy; int flags; TYPE_2__* pdev; TYPE_1__* msix_info; int /*<<< orphan*/ * tid_release_head; int /*<<< orphan*/  db_drop_task; int /*<<< orphan*/  db_full_task; int /*<<< orphan*/  tid_release_task; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  vec; } ;

/* Variables and functions */
 int FULL_INIT_DONE ; 
 int USING_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 

__attribute__((used)) static void FUNC7(struct adapter *adapter)
{
	FUNC5(adapter);
	FUNC0(&adapter->tid_release_task);
	FUNC0(&adapter->db_full_task);
	FUNC0(&adapter->db_drop_task);
	adapter->tid_release_task_busy = false;
	adapter->tid_release_head = NULL;

	if (adapter->flags & USING_MSIX) {
		FUNC2(adapter);
		FUNC1(adapter->msix_info[0].vec, adapter);
	} else
		FUNC1(adapter->pdev->irq, adapter);
	FUNC3(adapter);
	FUNC6(adapter);
	FUNC4(adapter);
	adapter->flags &= ~FULL_INIT_DONE;
}