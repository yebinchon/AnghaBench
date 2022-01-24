#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; } ;
struct TYPE_6__ {int /*<<< orphan*/  mbox_cmpl; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  lpfc_init_vfi_cmpl ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct lpfc_hba*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct lpfc_vport *vport)
{
	LPFC_MBOXQ_t *mboxq;
	int rc;
	struct lpfc_hba *phba = vport->phba;

	mboxq = FUNC3(phba->mbox_mem_pool, GFP_KERNEL);
	if (!mboxq) {
		FUNC1(vport, KERN_ERR,
			LOG_MBOX, "2892 Failed to allocate "
			"init_vfi mailbox\n");
		return;
	}
	FUNC0(mboxq, vport);
	mboxq->mbox_cmpl = lpfc_init_vfi_cmpl;
	rc = FUNC2(phba, mboxq, MBX_NOWAIT);
	if (rc == MBX_NOT_FINISHED) {
		FUNC1(vport, KERN_ERR,
			LOG_MBOX, "2893 Failed to issue init_vfi mailbox\n");
		FUNC4(mboxq, vport->phba->mbox_mem_pool);
	}
}