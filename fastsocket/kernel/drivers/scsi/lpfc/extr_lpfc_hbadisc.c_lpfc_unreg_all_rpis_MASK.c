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
struct lpfc_vport {int /*<<< orphan*/  vpi; struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; } ;
struct TYPE_6__ {int /*<<< orphan*/ * context1; int /*<<< orphan*/  mbox_cmpl; struct lpfc_vport* vport; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_MBOX ; 
 int LOG_VPORT ; 
 int /*<<< orphan*/  LPFC_MBOX_TMO ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  LPFC_UNREG_ALL_RPIS_VPORT ; 
 int MBX_NOT_FINISHED ; 
 int MBX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  lpfc_sli_def_mbox_cmpl ; 
 int FUNC2 (struct lpfc_hba*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct lpfc_vport *vport)
{
	struct lpfc_hba  *phba  = vport->phba;
	LPFC_MBOXQ_t     *mbox;
	int rc;

	if (phba->sli_rev == LPFC_SLI_REV4) {
		FUNC1(vport);
		return;
	}

	mbox = FUNC4(phba->mbox_mem_pool, GFP_KERNEL);
	if (mbox) {
		FUNC3(phba, vport->vpi, LPFC_UNREG_ALL_RPIS_VPORT,
				 mbox);
		mbox->vport = vport;
		mbox->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
		mbox->context1 = NULL;
		rc = FUNC2(phba, mbox, LPFC_MBOX_TMO);
		if (rc != MBX_TIMEOUT)
			FUNC5(mbox, phba->mbox_mem_pool);

		if ((rc == MBX_TIMEOUT) || (rc == MBX_NOT_FINISHED))
			FUNC0(vport, KERN_ERR, LOG_MBOX | LOG_VPORT,
				"1836 Could not issue "
				"unreg_login(all_rpis) status %d\n", rc);
	}
}