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
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int nlp_type; int /*<<< orphan*/  nlp_rpi; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ulpWord; } ;
struct TYPE_4__ {TYPE_1__ un; int /*<<< orphan*/  ulpStatus; } ;
struct lpfc_iocbq {int /*<<< orphan*/ * context1; TYPE_2__ iocb; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
typedef  TYPE_2__ IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_RSP ; 
 int NLP_FABRIC ; 
 scalar_t__ NLP_STE_NPR_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,struct lpfc_nodelist*) ; 

__attribute__((used)) static void
FUNC6(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
		       struct lpfc_iocbq *rspiocb)
{
	struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) cmdiocb->context1;
	struct lpfc_vport *vport = cmdiocb->vport;
	IOCB_t *irsp;

	irsp = &rspiocb->iocb;
	FUNC0(vport, LPFC_DISC_TRC_ELS_RSP,
		"ACC LOGO cmpl:   status:x%x/x%x did:x%x",
		irsp->ulpStatus, irsp->un.ulpWord[4], ndlp->nlp_DID);
	/* ACC to LOGO completes to NPort <nlp_DID> */
	FUNC4(vport, KERN_INFO, LOG_ELS,
			 "0109 ACC to LOGO completes to NPort x%x "
			 "Data: x%x x%x x%x\n",
			 ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
			 ndlp->nlp_rpi);

	if (ndlp->nlp_state == NLP_STE_NPR_NODE) {
		/* NPort Recovery mode or node is just allocated */
		if (!FUNC2(ndlp)) {
			/* If the ndlp is being used by another discovery
			 * thread, just unregister the RPI.
			 */
			FUNC5(vport, ndlp);
		} else {
			/* Indicate the node has already released, should
			 * not reference to it from within lpfc_els_free_iocb.
			 */
			cmdiocb->context1 = NULL;
		}
	}

	/*
	 * The driver received a LOGO from the rport and has ACK'd it.
	 * At this point, the driver is done so release the IOCB
	 */
	FUNC1(phba, cmdiocb);

	/*
	 * Remove the ndlp reference if it's a fabric node that has
	 * sent us an unsolicted LOGO.
	 */
	if (ndlp->nlp_type & NLP_FABRIC)
		FUNC3(ndlp);

	return;
}