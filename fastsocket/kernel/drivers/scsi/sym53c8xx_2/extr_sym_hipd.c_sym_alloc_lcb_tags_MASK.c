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
typedef  size_t u_char ;
struct sym_tcb {int dummy; } ;
struct TYPE_2__ {void* itlq_tbl_sa; } ;
struct sym_lcb {int* cb_tags; void** itlq_tbl; TYPE_1__ head; } ;
struct sym_hcb {int /*<<< orphan*/  notask_ba; struct sym_tcb* target; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SYM_CONF_MAX_TASK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 void** FUNC2 (int,char*) ; 
 struct sym_lcb* FUNC3 (struct sym_tcb*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void**,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 

__attribute__((used)) static void FUNC6 (struct sym_hcb *np, u_char tn, u_char ln)
{
	struct sym_tcb *tp = &np->target[tn];
	struct sym_lcb *lp = FUNC3(tp, ln);
	int i;

	/*
	 *  Allocate the task table and and the tag allocation 
	 *  circular buffer. We want both or none.
	 */
	lp->itlq_tbl = FUNC2(SYM_CONF_MAX_TASK*4, "ITLQ_TBL");
	if (!lp->itlq_tbl)
		goto fail;
	lp->cb_tags = FUNC1(SYM_CONF_MAX_TASK, 1, GFP_ATOMIC);
	if (!lp->cb_tags) {
		FUNC4(lp->itlq_tbl, SYM_CONF_MAX_TASK*4, "ITLQ_TBL");
		lp->itlq_tbl = NULL;
		goto fail;
	}

	/*
	 *  Initialize the task table with invalid entries.
	 */
	for (i = 0 ; i < SYM_CONF_MAX_TASK ; i++)
		lp->itlq_tbl[i] = FUNC0(np->notask_ba);

	/*
	 *  Fill up the tag buffer with tag numbers.
	 */
	for (i = 0 ; i < SYM_CONF_MAX_TASK ; i++)
		lp->cb_tags[i] = i;

	/*
	 *  Make the task table available to SCRIPTS, 
	 *  And accept tagged commands now.
	 */
	lp->head.itlq_tbl_sa = FUNC0(FUNC5(lp->itlq_tbl));

	return;
fail:
	return;
}