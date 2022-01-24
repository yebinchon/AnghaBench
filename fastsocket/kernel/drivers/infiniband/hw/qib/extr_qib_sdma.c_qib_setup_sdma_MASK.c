#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  comp; int /*<<< orphan*/  kref; } ;
struct qib_pportdata {int /*<<< orphan*/  sdma_sw_clean_up_task; int /*<<< orphan*/  sdma_activelist; scalar_t__ sdma_descq_added; scalar_t__ sdma_descq_removed; scalar_t__ sdma_descq_head; scalar_t__ sdma_generation; TYPE_1__ sdma_state; int /*<<< orphan*/  sdma_lock; struct qib_devdata* dd; } ;
struct qib_devdata {int (* f_init_sdma_regs ) (struct qib_pportdata*) ;int /*<<< orphan*/  (* f_sdma_init_early ) (struct qib_pportdata*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qib_sdma_event_e10_go_hw_start ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_sdma_state_s00_hw_down ; 
 int /*<<< orphan*/  FUNC5 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdma_sw_clean_up_task ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_pportdata*) ; 
 int FUNC10 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC12(struct qib_pportdata *ppd)
{
	struct qib_devdata *dd = ppd->dd;
	unsigned long flags;
	int ret = 0;

	ret = FUNC1(ppd);
	if (ret)
		goto bail;

	/* set consistent sdma state */
	ppd->dd->f_sdma_init_early(ppd);
	FUNC7(&ppd->sdma_lock, flags);
	FUNC6(ppd, qib_sdma_state_s00_hw_down);
	FUNC8(&ppd->sdma_lock, flags);

	/* set up reference counting */
	FUNC3(&ppd->sdma_state.kref);
	FUNC2(&ppd->sdma_state.comp);

	ppd->sdma_generation = 0;
	ppd->sdma_descq_head = 0;
	ppd->sdma_descq_removed = 0;
	ppd->sdma_descq_added = 0;

	FUNC0(&ppd->sdma_activelist);

	FUNC11(&ppd->sdma_sw_clean_up_task, sdma_sw_clean_up_task,
		(unsigned long)ppd);

	ret = dd->f_init_sdma_regs(ppd);
	if (ret)
		goto bail_alloc;

	FUNC4(ppd, qib_sdma_event_e10_go_hw_start);

	return 0;

bail_alloc:
	FUNC5(ppd);
bail:
	return ret;
}