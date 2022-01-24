#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  used; } ;
struct be_queue_info {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ q; struct be_queue_info cq; } ;
struct TYPE_6__ {TYPE_2__ mcc_obj; } ;
struct beiscsi_hba {TYPE_3__ ctrl; } ;
struct be_mcc_compl {int flags; } ;
struct be_async_event_link_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_MBOX ; 
 int CQE_FLAGS_ASYNC_MASK ; 
 int CQE_FLAGS_COMPLETED_MASK ; 
 int CQE_FLAGS_VALID_MASK ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct be_mcc_compl*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,struct be_async_event_link_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct be_queue_info*) ; 
 struct be_mcc_compl* FUNC8 (struct be_queue_info*) ; 

__attribute__((used)) static void  FUNC9(struct beiscsi_hba *phba)
{
	struct be_queue_info *mcc_cq;
	struct  be_mcc_compl *mcc_compl;
	unsigned int num_processed = 0;

	mcc_cq = &phba->ctrl.mcc_obj.cq;
	mcc_compl = FUNC8(mcc_cq);
	mcc_compl->flags = FUNC6(mcc_compl->flags);
	while (mcc_compl->flags & CQE_FLAGS_VALID_MASK) {

		if (num_processed >= 32) {
			FUNC4(phba, mcc_cq->id,
					num_processed, 0, 0);
			num_processed = 0;
		}
		if (mcc_compl->flags & CQE_FLAGS_ASYNC_MASK) {
			/* Interpret flags as an async trailer */
			if (FUNC5(mcc_compl->flags))
				/* Interpret compl as a async link evt */
				FUNC2(phba,
				(struct be_async_event_link_state *) mcc_compl);
			else
				FUNC3(phba, KERN_ERR, BEISCSI_LOG_MBOX,
					    "BM_%d :  Unsupported Async Event, flags"
					    " = 0x%08x\n",
					    mcc_compl->flags);
		} else if (mcc_compl->flags & CQE_FLAGS_COMPLETED_MASK) {
			FUNC1(&phba->ctrl, mcc_compl);
			FUNC0(&phba->ctrl.mcc_obj.q.used);
		}

		mcc_compl->flags = 0;
		FUNC7(mcc_cq);
		mcc_compl = FUNC8(mcc_cq);
		mcc_compl->flags = FUNC6(mcc_compl->flags);
		num_processed++;
	}

	if (num_processed > 0)
		FUNC4(phba, mcc_cq->id, num_processed, 1, 0);

}