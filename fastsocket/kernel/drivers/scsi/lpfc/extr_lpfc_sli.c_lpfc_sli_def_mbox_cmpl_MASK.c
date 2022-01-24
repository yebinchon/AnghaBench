#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct lpfc_vport {int /*<<< orphan*/  fc_flag; int /*<<< orphan*/  vpi_state; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; TYPE_3__* pport; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_12__ {int /*<<< orphan*/  vpi; } ;
struct TYPE_13__ {TYPE_1__ varRegLogin; int /*<<< orphan*/ * varWords; } ;
struct TYPE_15__ {scalar_t__ mbxCommand; scalar_t__ mbxStatus; TYPE_2__ un; } ;
struct TYPE_16__ {int /*<<< orphan*/  mqe; TYPE_4__ mb; } ;
struct TYPE_17__ {void (* mbox_cmpl ) (struct lpfc_hba*,TYPE_6__*) ;TYPE_5__ u; int /*<<< orphan*/ * context2; scalar_t__ context1; struct lpfc_vport* vport; } ;
struct TYPE_14__ {int load_flag; } ;
typedef  TYPE_6__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int FC_UNLOADING ; 
 int /*<<< orphan*/  FC_VPORT_NEEDS_REG_VPI ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_MBOX ; 
 int LOG_SLI ; 
 int /*<<< orphan*/  LPFC_VPI_REGISTERED ; 
 scalar_t__ MBXERR_SEC_NO_PERMISSION ; 
 scalar_t__ MBX_INIT_LINK ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 scalar_t__ MBX_REG_LOGIN64 ; 
 scalar_t__ MBX_REG_VPI ; 
 scalar_t__ MBX_SLI4_CONFIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_mqe_command ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*) ; 
 struct Scsi_Host* FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,TYPE_6__*) ; 
 int FUNC7 (struct lpfc_hba*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	struct lpfc_vport  *vport = pmb->vport;
	struct lpfc_dmabuf *mp;
	struct lpfc_nodelist *ndlp;
	struct Scsi_Host *shost;
	uint16_t rpi, vpi;
	int rc;

	mp = (struct lpfc_dmabuf *) (pmb->context1);

	if (mp) {
		FUNC2(phba, mp->virt, mp->phys);
		FUNC1(mp);
	}

	/*
	 * If a REG_LOGIN succeeded  after node is destroyed or node
	 * is in re-discovery driver need to cleanup the RPI.
	 */
	if (!(phba->pport->load_flag & FC_UNLOADING) &&
	    pmb->u.mb.mbxCommand == MBX_REG_LOGIN64 &&
	    !pmb->u.mb.mbxStatus) {
		rpi = pmb->u.mb.un.varWords[0];
		vpi = pmb->u.mb.un.varRegLogin.vpi;
		FUNC8(phba, vpi, rpi, pmb);
		pmb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
		rc = FUNC7(phba, pmb, MBX_NOWAIT);
		if (rc != MBX_NOT_FINISHED)
			return;
	}

	if ((pmb->u.mb.mbxCommand == MBX_REG_VPI) &&
		!(phba->pport->load_flag & FC_UNLOADING) &&
		!pmb->u.mb.mbxStatus) {
		shost = FUNC5(vport);
		FUNC10(shost->host_lock);
		vport->vpi_state |= LPFC_VPI_REGISTERED;
		vport->fc_flag &= ~FC_VPORT_NEEDS_REG_VPI;
		FUNC11(shost->host_lock);
	}

	if (pmb->u.mb.mbxCommand == MBX_REG_LOGIN64) {
		ndlp = (struct lpfc_nodelist *)pmb->context2;
		FUNC3(ndlp);
		pmb->context2 = NULL;
	}

	/* Check security permission status on INIT_LINK mailbox command */
	if ((pmb->u.mb.mbxCommand == MBX_INIT_LINK) &&
	    (pmb->u.mb.mbxStatus == MBXERR_SEC_NO_PERMISSION))
		FUNC4(phba, KERN_ERR, LOG_MBOX | LOG_SLI,
				"2860 SLI authentication is required "
				"for INIT_LINK but has not done yet\n");

	if (FUNC0(lpfc_mqe_command, &pmb->u.mqe) == MBX_SLI4_CONFIG)
		FUNC6(phba, pmb);
	else
		FUNC9(pmb, phba->mbox_mem_pool);
}