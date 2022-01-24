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
struct hwi_context_memory {TYPE_1__* be_eq; } ;
struct be_queue_info {int dummy; } ;
struct TYPE_4__ {struct be_queue_info q; struct be_queue_info cq; } ;
struct be_ctrl_info {TYPE_2__ mcc_obj; } ;
struct beiscsi_hba {size_t num_cpus; struct be_ctrl_info ctrl; scalar_t__ msix_enabled; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_mcc_compl {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MCC_CQ_LEN ; 
 int /*<<< orphan*/  MCC_Q_LEN ; 
 int /*<<< orphan*/  QTYPE_CQ ; 
 scalar_t__ FUNC0 (struct beiscsi_hba*,struct be_queue_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,struct be_queue_info*) ; 
 scalar_t__ FUNC2 (struct be_ctrl_info*,struct be_queue_info*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct beiscsi_hba*,struct be_queue_info*,struct be_queue_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_ctrl_info*,struct be_queue_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct beiscsi_hba *phba,
				struct hwi_context_memory *phwi_context)
{
	struct be_queue_info *q, *cq;
	struct be_ctrl_info *ctrl = &phba->ctrl;

	/* Alloc MCC compl queue */
	cq = &phba->ctrl.mcc_obj.cq;
	if (FUNC0(phba, cq, MCC_CQ_LEN,
			sizeof(struct be_mcc_compl)))
		goto err;
	/* Ask BE to create MCC compl queue; */
	if (phba->msix_enabled) {
		if (FUNC2(ctrl, cq, &phwi_context->be_eq
					 [phba->num_cpus].q, false, true, 0))
		goto mcc_cq_free;
	} else {
		if (FUNC2(ctrl, cq, &phwi_context->be_eq[0].q,
					  false, true, 0))
		goto mcc_cq_free;
	}

	/* Alloc MCC queue */
	q = &phba->ctrl.mcc_obj.q;
	if (FUNC0(phba, q, MCC_Q_LEN, sizeof(struct be_mcc_wrb)))
		goto mcc_cq_destroy;

	/* Ask BE to create MCC queue */
	if (FUNC3(phba, q, cq))
		goto mcc_q_free;

	return 0;

mcc_q_free:
	FUNC1(phba, q);
mcc_cq_destroy:
	FUNC4(ctrl, cq, QTYPE_CQ);
mcc_cq_free:
	FUNC1(phba, cq);
err:
	return -ENOMEM;
}