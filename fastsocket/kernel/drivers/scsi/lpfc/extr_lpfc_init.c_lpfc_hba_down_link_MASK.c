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
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  link_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  mbox_cmpl; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_HBA_ERROR ; 
 int MBX_BUSY ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int MBX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  lpfc_sli_def_mbox_cmpl ; 
 int FUNC2 (struct lpfc_hba*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct lpfc_hba *phba)
{
	LPFC_MBOXQ_t *pmb;
	int rc;

	pmb = FUNC3(phba->mbox_mem_pool, GFP_KERNEL);
	if (!pmb) {
		phba->link_state = LPFC_HBA_ERROR;
		return -ENOMEM;
	}

	FUNC1(phba,
		KERN_ERR, LOG_INIT,
		"0491 Adapter Link is disabled.\n");
	FUNC0(phba, pmb);
	pmb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
	rc = FUNC2(phba, pmb, MBX_NOWAIT);
	if ((rc != MBX_SUCCESS) && (rc != MBX_BUSY)) {
		FUNC1(phba,
		KERN_ERR, LOG_INIT,
		"2522 Adapter failed to issue DOWN_LINK"
		" mbox command rc 0x%x\n", rc);

		FUNC4(pmb, phba->mbox_mem_pool);
		return -EIO;
	}
	return 0;
}