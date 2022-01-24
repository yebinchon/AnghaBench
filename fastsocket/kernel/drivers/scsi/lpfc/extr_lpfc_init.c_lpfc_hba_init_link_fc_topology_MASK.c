#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_hba {int lmt; scalar_t__ sli_rev; int /*<<< orphan*/  cfg_suppress_link_up; int /*<<< orphan*/  mbox_mem_pool; void* link_state; int /*<<< orphan*/  HAregaddr; int /*<<< orphan*/  HCregaddr; int /*<<< orphan*/  cfg_link_speed; struct lpfc_vport* pport; } ;
struct TYPE_9__ {int /*<<< orphan*/  mbxStatus; int /*<<< orphan*/  mbxCommand; } ;
struct TYPE_8__ {TYPE_2__ mb; } ;
struct TYPE_10__ {int /*<<< orphan*/  mbox_cmpl; struct lpfc_vport* vport; TYPE_1__ u; } ;
typedef  TYPE_2__ MAILBOX_t ;
typedef  TYPE_3__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LMT_10Gb ; 
 int LMT_16Gb ; 
 int LMT_1Gb ; 
 int LMT_2Gb ; 
 int LMT_4Gb ; 
 int LMT_8Gb ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LOG_LINK_EVENT ; 
 void* LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  LPFC_INITIALIZE_LINK ; 
 scalar_t__ LPFC_SLI_REV3 ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  LPFC_USER_LINK_SPEED_10G ; 
 int /*<<< orphan*/  LPFC_USER_LINK_SPEED_16G ; 
 int /*<<< orphan*/  LPFC_USER_LINK_SPEED_1G ; 
 int /*<<< orphan*/  LPFC_USER_LINK_SPEED_2G ; 
 int /*<<< orphan*/  LPFC_USER_LINK_SPEED_4G ; 
 int /*<<< orphan*/  LPFC_USER_LINK_SPEED_8G ; 
 int /*<<< orphan*/  LPFC_USER_LINK_SPEED_AUTO ; 
 int /*<<< orphan*/  LPFC_USER_LINK_SPEED_MAX ; 
 int MBX_BUSY ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int MBX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  lpfc_sli_def_mbox_cmpl ; 
 int FUNC3 (struct lpfc_hba*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int
FUNC8(struct lpfc_hba *phba, uint32_t fc_topology)
{
	struct lpfc_vport *vport = phba->pport;
	LPFC_MBOXQ_t *pmb;
	MAILBOX_t *mb;
	int rc;

	pmb = FUNC4(phba->mbox_mem_pool, GFP_KERNEL);
	if (!pmb) {
		phba->link_state = LPFC_HBA_ERROR;
		return -ENOMEM;
	}
	mb = &pmb->u.mb;
	pmb->vport = vport;

	if ((phba->cfg_link_speed > LPFC_USER_LINK_SPEED_MAX) ||
	    ((phba->cfg_link_speed == LPFC_USER_LINK_SPEED_1G) &&
	     !(phba->lmt & LMT_1Gb)) ||
	    ((phba->cfg_link_speed == LPFC_USER_LINK_SPEED_2G) &&
	     !(phba->lmt & LMT_2Gb)) ||
	    ((phba->cfg_link_speed == LPFC_USER_LINK_SPEED_4G) &&
	     !(phba->lmt & LMT_4Gb)) ||
	    ((phba->cfg_link_speed == LPFC_USER_LINK_SPEED_8G) &&
	     !(phba->lmt & LMT_8Gb)) ||
	    ((phba->cfg_link_speed == LPFC_USER_LINK_SPEED_10G) &&
	     !(phba->lmt & LMT_10Gb)) ||
	    ((phba->cfg_link_speed == LPFC_USER_LINK_SPEED_16G) &&
	     !(phba->lmt & LMT_16Gb))) {
		/* Reset link speed to auto */
		FUNC1(phba, KERN_ERR, LOG_LINK_EVENT,
			"1302 Invalid speed for this board:%d "
			"Reset link speed to auto.\n",
			phba->cfg_link_speed);
			phba->cfg_link_speed = LPFC_USER_LINK_SPEED_AUTO;
	}
	FUNC0(phba, pmb, fc_topology, phba->cfg_link_speed);
	pmb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
	if (phba->sli_rev < LPFC_SLI_REV4)
		FUNC2(phba);
	rc = FUNC3(phba, pmb, MBX_NOWAIT);
	if ((rc != MBX_BUSY) && (rc != MBX_SUCCESS)) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
			"0498 Adapter failed to init, mbxCmd x%x "
			"INIT_LINK, mbxStatus x%x\n",
			mb->mbxCommand, mb->mbxStatus);
		if (phba->sli_rev <= LPFC_SLI_REV3) {
			/* Clear all interrupt enable conditions */
			FUNC7(0, phba->HCregaddr);
			FUNC6(phba->HCregaddr); /* flush */
			/* Clear all pending interrupts */
			FUNC7(0xffffffff, phba->HAregaddr);
			FUNC6(phba->HAregaddr); /* flush */
		}
		phba->link_state = LPFC_HBA_ERROR;
		if (rc != MBX_BUSY)
			FUNC5(pmb, phba->mbox_mem_pool);
		return -EIO;
	}
	phba->cfg_suppress_link_up = LPFC_INITIALIZE_LINK;

	return 0;
}