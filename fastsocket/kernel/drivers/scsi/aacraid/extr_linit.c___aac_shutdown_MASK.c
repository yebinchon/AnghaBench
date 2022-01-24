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
struct fib {int /*<<< orphan*/  event_wait; TYPE_3__* hw_fib_va; } ;
struct aac_dev {TYPE_4__* pdev; scalar_t__ msi; int /*<<< orphan*/  thread; struct fib* fibs; TYPE_1__* scsi_host_ptr; scalar_t__ aif_thread; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq; } ;
struct TYPE_6__ {int XferState; } ;
struct TYPE_7__ {TYPE_2__ header; } ;
struct TYPE_5__ {int can_queue; } ;

/* Variables and functions */
 int AAC_NUM_MGT_FIB ; 
 int Async ; 
 int NoResponseExpected ; 
 int ResponseExpected ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct aac_dev * aac)
{
	if (aac->aif_thread) {
		int i;
		/* Clear out events first */
		for (i = 0; i < (aac->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB); i++) {
			struct fib *fib = &aac->fibs[i];
			if (!(fib->hw_fib_va->header.XferState & FUNC2(NoResponseExpected | Async)) &&
			    (fib->hw_fib_va->header.XferState & FUNC2(ResponseExpected)))
				FUNC6(&fib->event_wait);
		}
		FUNC4(aac->thread);
	}
	FUNC1(aac);
	FUNC0(aac);
	FUNC3(aac->pdev->irq, aac);
	if (aac->msi)
		FUNC5(aac->pdev);
}