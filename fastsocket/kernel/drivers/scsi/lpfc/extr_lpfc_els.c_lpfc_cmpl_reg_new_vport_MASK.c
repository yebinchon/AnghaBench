#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int fc_flag; scalar_t__ port_state; int /*<<< orphan*/  vpi_state; int /*<<< orphan*/  port_type; int /*<<< orphan*/  vpi; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; struct lpfc_vport* pport; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_11__ {scalar_t__ upd; } ;
struct TYPE_12__ {TYPE_2__ varRegVpi; } ;
struct TYPE_13__ {int mbxStatus; TYPE_3__ un; } ;
struct TYPE_10__ {TYPE_4__ mb; } ;
struct TYPE_14__ {int /*<<< orphan*/  mbox_cmpl; struct lpfc_vport* vport; TYPE_1__ u; scalar_t__ context2; } ;
typedef  TYPE_4__ MAILBOX_t ;
typedef  TYPE_5__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int FC_FABRIC ; 
 int FC_LOGO_RCVD_DID_CHNG ; 
 int FC_PUBLIC_LOOP ; 
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int FC_VPORT_NEEDS_REG_VPI ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 scalar_t__ LPFC_FDISC ; 
 int /*<<< orphan*/  LPFC_PHYSICAL_PORT ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  LPFC_VPI_REGISTERED ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_init_vpi_cmpl ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct Scsi_Host* FUNC9 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*) ; 
 int FUNC11 (struct lpfc_hba*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	struct lpfc_vport *vport = pmb->vport;
	struct Scsi_Host  *shost = FUNC9(vport);
	struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) pmb->context2;
	MAILBOX_t *mb = &pmb->u.mb;
	int rc;

	FUNC15(shost->host_lock);
	vport->fc_flag &= ~FC_VPORT_NEEDS_REG_VPI;
	FUNC16(shost->host_lock);

	if (mb->mbxStatus) {
		FUNC8(vport, KERN_ERR, LOG_MBOX,
				"0915 Register VPI failed : Status: x%x"
				" upd bit: x%x \n", mb->mbxStatus,
				 mb->un.varRegVpi.upd);
		if (phba->sli_rev == LPFC_SLI_REV4 &&
			mb->un.varRegVpi.upd)
			goto mbox_err_exit ;

		switch (mb->mbxStatus) {
		case 0x11:	/* unsupported feature */
		case 0x9603:	/* max_vpi exceeded */
		case 0x9602:	/* Link event since CLEAR_LA */
			/* giving up on vport registration */
			FUNC13(vport, FC_VPORT_FAILED);
			FUNC15(shost->host_lock);
			vport->fc_flag &= ~(FC_FABRIC | FC_PUBLIC_LOOP);
			FUNC16(shost->host_lock);
			FUNC0(vport);
			break;
		/* If reg_vpi fail with invalid VPI status, re-init VPI */
		case 0x20:
			FUNC15(shost->host_lock);
			vport->fc_flag |= FC_VPORT_NEEDS_REG_VPI;
			FUNC16(shost->host_lock);
			FUNC2(phba, pmb, vport->vpi);
			pmb->vport = vport;
			pmb->mbox_cmpl = lpfc_init_vpi_cmpl;
			rc = FUNC11(phba, pmb,
				MBX_NOWAIT);
			if (rc == MBX_NOT_FINISHED) {
				FUNC8(vport,
					KERN_ERR, LOG_MBOX,
					"2732 Failed to issue INIT_VPI"
					" mailbox command\n");
			} else {
				FUNC7(ndlp);
				return;
			}

		default:
			/* Try to recover from this error */
			if (phba->sli_rev == LPFC_SLI_REV4)
				FUNC10(vport);
			FUNC6(vport);
			FUNC15(shost->host_lock);
			vport->fc_flag |= FC_VPORT_NEEDS_REG_VPI;
			FUNC16(shost->host_lock);
			if (vport->port_type == LPFC_PHYSICAL_PORT
				&& !(vport->fc_flag & FC_LOGO_RCVD_DID_CHNG))
				FUNC5(vport);
			else
				FUNC3(vport);
			break;
		}
	} else {
		FUNC15(shost->host_lock);
		vport->vpi_state |= LPFC_VPI_REGISTERED;
		FUNC16(shost->host_lock);
		if (vport == phba->pport) {
			if (phba->sli_rev < LPFC_SLI_REV4)
				FUNC4(vport);
			else {
				/*
				 * If the physical port is instantiated using
				 * FDISC, do not start vport discovery.
				 */
				if (vport->port_state != LPFC_FDISC)
					FUNC12(phba);
				FUNC1(phba, vport);
			}
		} else
			FUNC1(phba, vport);
	}
mbox_err_exit:
	/* Now, we decrement the ndlp reference count held for this
	 * callback function
	 */
	FUNC7(ndlp);

	FUNC14(pmb, phba->mbox_mem_pool);
	return;
}