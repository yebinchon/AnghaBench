#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct lpfc_vport {int /*<<< orphan*/  vpi; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; } ;
struct TYPE_5__ {int /*<<< orphan*/  mbox_cmpl; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lpfc_sli_def_mbox_cmpl ; 
 int FUNC1 (struct lpfc_hba*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct lpfc_hba *phba,
		struct lpfc_vport *vport,
		uint16_t rpi)
{
	LPFC_MBOXQ_t *pmb;
	int rc;

	pmb = (LPFC_MBOXQ_t *) FUNC3(phba->mbox_mem_pool,
			GFP_KERNEL);
	if (!pmb)
		FUNC0(vport, KERN_ERR, LOG_MBOX,
			"2796 mailbox memory allocation failed \n");
	else {
		FUNC2(phba, vport->vpi, rpi, pmb);
		pmb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
		rc = FUNC1(phba, pmb, MBX_NOWAIT);
		if (rc == MBX_NOT_FINISHED)
			FUNC4(pmb, phba->mbox_mem_pool);
	}
}