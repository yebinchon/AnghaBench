#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {int fc_flag; TYPE_1__* phba; } ;
struct lpfc_nodelist {int nlp_flag; scalar_t__ nlp_state; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlp_mem_pool; } ;

/* Variables and functions */
 int FC_NDISC_ACTIVE ; 
 int FC_RSCN_MODE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int NLP_NPR_2B_DISC ; 
 int NLP_RCV_PLOGI ; 
 scalar_t__ NLP_STE_ADISC_ISSUE ; 
 int /*<<< orphan*/  NLP_STE_NPR_NODE ; 
 scalar_t__ NLP_STE_PLOGI_ISSUE ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 struct lpfc_nodelist* FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC7 (struct lpfc_vport*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

struct lpfc_nodelist *
FUNC11(struct lpfc_vport *vport, uint32_t did)
{
	struct Scsi_Host *shost = FUNC7(vport);
	struct lpfc_nodelist *ndlp;

	ndlp = FUNC3(vport, did);
	if (!ndlp) {
		if ((vport->fc_flag & FC_RSCN_MODE) != 0 &&
		    FUNC6(vport, did) == 0)
			return NULL;
		ndlp = (struct lpfc_nodelist *)
		     FUNC8(vport->phba->nlp_mem_pool, GFP_KERNEL);
		if (!ndlp)
			return NULL;
		FUNC4(vport, ndlp, did);
		FUNC5(vport, ndlp, NLP_STE_NPR_NODE);
		FUNC9(shost->host_lock);
		ndlp->nlp_flag |= NLP_NPR_2B_DISC;
		FUNC10(shost->host_lock);
		return ndlp;
	} else if (!FUNC0(ndlp)) {
		ndlp = FUNC2(vport, ndlp, NLP_STE_NPR_NODE);
		if (!ndlp)
			return NULL;
		FUNC9(shost->host_lock);
		ndlp->nlp_flag |= NLP_NPR_2B_DISC;
		FUNC10(shost->host_lock);
		return ndlp;
	}

	if ((vport->fc_flag & FC_RSCN_MODE) &&
	    !(vport->fc_flag & FC_NDISC_ACTIVE)) {
		if (FUNC6(vport, did)) {
			/* If we've already received a PLOGI from this NPort
			 * we don't need to try to discover it again.
			 */
			if (ndlp->nlp_flag & NLP_RCV_PLOGI)
				return NULL;

			/* Since this node is marked for discovery,
			 * delay timeout is not needed.
			 */
			FUNC1(vport, ndlp);
			FUNC9(shost->host_lock);
			ndlp->nlp_flag |= NLP_NPR_2B_DISC;
			FUNC10(shost->host_lock);
		} else
			ndlp = NULL;
	} else {
		/* If we've already received a PLOGI from this NPort,
		 * or we are already in the process of discovery on it,
		 * we don't need to try to discover it again.
		 */
		if (ndlp->nlp_state == NLP_STE_ADISC_ISSUE ||
		    ndlp->nlp_state == NLP_STE_PLOGI_ISSUE ||
		    ndlp->nlp_flag & NLP_RCV_PLOGI)
			return NULL;
		FUNC5(vport, ndlp, NLP_STE_NPR_NODE);
		FUNC9(shost->host_lock);
		ndlp->nlp_flag |= NLP_NPR_2B_DISC;
		FUNC10(shost->host_lock);
	}
	return ndlp;
}