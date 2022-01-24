#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {scalar_t__ port_state; int fc_flag; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_type; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_rpi; } ;
struct lpfc_hba {scalar_t__ fc_topology; scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_8__ {int /*<<< orphan*/ * varWords; } ;
struct TYPE_9__ {TYPE_2__ un; scalar_t__ mbxStatus; } ;
struct TYPE_7__ {TYPE_3__ mb; } ;
struct TYPE_10__ {int /*<<< orphan*/ * context2; int /*<<< orphan*/ * context1; TYPE_1__ u; struct lpfc_vport* vport; } ;
typedef  TYPE_3__ MAILBOX_t ;
typedef  TYPE_4__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int FC_LOGO_RCVD_DID_CHNG ; 
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 scalar_t__ LPFC_FABRIC_CFG_LINK ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 scalar_t__ LPFC_TOPOLOGY_LOOP ; 
 int /*<<< orphan*/  NLP_FABRIC ; 
 int /*<<< orphan*/  NLP_RPI_REGISTERED ; 
 int /*<<< orphan*/  NLP_STE_UNMAPPED_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct Scsi_Host* FUNC8 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void
FUNC14(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	struct lpfc_vport *vport = pmb->vport;
	MAILBOX_t *mb = &pmb->u.mb;
	struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *) (pmb->context1);
	struct lpfc_nodelist *ndlp;
	struct Scsi_Host *shost;

	ndlp = (struct lpfc_nodelist *) pmb->context2;
	pmb->context1 = NULL;
	pmb->context2 = NULL;

	if (mb->mbxStatus) {
		FUNC7(vport, KERN_ERR, LOG_MBOX,
				 "0258 Register Fabric login error: 0x%x\n",
				 mb->mbxStatus);
		FUNC4(phba, mp->virt, mp->phys);
		FUNC0(mp);
		FUNC11(pmb, phba->mbox_mem_pool);

		if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {
			/* FLOGI failed, use loop map to make discovery list */
			FUNC1(vport);

			/* Start discovery */
			FUNC2(vport);
			/* Decrement the reference count to ndlp after the
			 * reference to the ndlp are done.
			 */
			FUNC5(ndlp);
			return;
		}

		FUNC10(vport, FC_VPORT_FAILED);
		/* Decrement the reference count to ndlp after the reference
		 * to the ndlp are done.
		 */
		FUNC5(ndlp);
		return;
	}

	if (phba->sli_rev < LPFC_SLI_REV4)
		ndlp->nlp_rpi = mb->un.varWords[0];
	ndlp->nlp_flag |= NLP_RPI_REGISTERED;
	ndlp->nlp_type |= NLP_FABRIC;
	FUNC6(vport, ndlp, NLP_STE_UNMAPPED_NODE);

	if (vport->port_state == LPFC_FABRIC_CFG_LINK) {
		/* when physical port receive logo donot start
		 * vport discovery */
		if (!(vport->fc_flag & FC_LOGO_RCVD_DID_CHNG))
			FUNC9(phba);
		else {
			shost = FUNC8(vport);
			FUNC12(shost->host_lock);
			vport->fc_flag &= ~FC_LOGO_RCVD_DID_CHNG ;
			FUNC13(shost->host_lock);
		}
		FUNC3(phba, vport);
	}

	FUNC4(phba, mp->virt, mp->phys);
	FUNC0(mp);
	FUNC11(pmb, phba->mbox_mem_pool);

	/* Drop the reference count from the mbox at the end after
	 * all the current reference to the ndlp have been done.
	 */
	FUNC5(ndlp);
	return;
}