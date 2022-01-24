#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int /*<<< orphan*/  nlp_state; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_prev_state; } ;
struct lpfc_iocbq {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int NLP_DELAY_TMO ; 
 int NLP_LOGO_ACC ; 
 int NLP_LOGO_SND ; 
 int NLP_NPR_2B_DISC ; 
 int NLP_NPR_ADISC ; 
 int /*<<< orphan*/  NLP_STE_NPR_NODE ; 
 int /*<<< orphan*/  NLP_STE_PLOGI_ISSUE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC7(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			void *arg, uint32_t evt)
{
	struct Scsi_Host *shost = FUNC4(vport);
	struct lpfc_iocbq *cmdiocb  = (struct lpfc_iocbq *) arg;

	/* Ignore PLOGI if we have an outstanding LOGO */
	if (ndlp->nlp_flag & (NLP_LOGO_SND | NLP_LOGO_ACC))
		return ndlp->nlp_state;
	if (FUNC3(vport, ndlp, cmdiocb)) {
		FUNC0(vport, ndlp);
		FUNC5(shost->host_lock);
		ndlp->nlp_flag &= ~(NLP_NPR_ADISC | NLP_NPR_2B_DISC);
		FUNC6(shost->host_lock);
	} else if (!(ndlp->nlp_flag & NLP_NPR_2B_DISC)) {
		/* send PLOGI immediately, move to PLOGI issue state */
		if (!(ndlp->nlp_flag & NLP_DELAY_TMO)) {
			ndlp->nlp_prev_state = NLP_STE_NPR_NODE;
			FUNC2(vport, ndlp, NLP_STE_PLOGI_ISSUE);
			FUNC1(vport, ndlp->nlp_DID, 0);
		}
	}
	return ndlp->nlp_state;
}