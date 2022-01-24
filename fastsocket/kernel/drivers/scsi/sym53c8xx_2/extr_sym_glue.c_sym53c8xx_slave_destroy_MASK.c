#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int check_nego; } ;
struct TYPE_5__ {scalar_t__ uval; int /*<<< orphan*/  wval; scalar_t__ sval; } ;
struct sym_tcb {int /*<<< orphan*/ * starget; TYPE_2__ tgoal; TYPE_1__ head; } ;
struct sym_lcb {scalar_t__ busy_itl; scalar_t__ busy_itlq; } ;
struct TYPE_8__ {TYPE_3__* host; } ;
struct sym_hcb {TYPE_4__ s; int /*<<< orphan*/  rv_scntl3; struct sym_tcb* target; } ;
struct scsi_device {size_t id; int /*<<< orphan*/  lun; int /*<<< orphan*/  host; } ;
struct TYPE_7__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sym_hcb*,size_t,int /*<<< orphan*/ ) ; 
 struct sym_hcb* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sym_lcb* FUNC5 (struct sym_tcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sym_hcb*,int) ; 

__attribute__((used)) static void FUNC7(struct scsi_device *sdev)
{
	struct sym_hcb *np = FUNC4(sdev->host);
	struct sym_tcb *tp = &np->target[sdev->id];
	struct sym_lcb *lp = FUNC5(tp, sdev->lun);
	unsigned long flags;

	FUNC0(np->s.host->host_lock, flags);

	if (lp->busy_itlq || lp->busy_itl) {
		/*
		 * This really shouldn't happen, but we can't return an error
		 * so let's try to stop all on-going I/O.
		 */
		FUNC2(KERN_WARNING, tp->starget,
			       "Removing busy LCB (%d)\n", sdev->lun);
		FUNC6(np, 1);
	}

	if (FUNC3(np, sdev->id, sdev->lun) == 0) {
		/*
		 * It was the last unit for this target.
		 */
		tp->head.sval        = 0;
		tp->head.wval        = np->rv_scntl3;
		tp->head.uval        = 0;
		tp->tgoal.check_nego = 1;
		tp->starget	     = NULL;
	}

	FUNC1(np->s.host->host_lock, flags);
}