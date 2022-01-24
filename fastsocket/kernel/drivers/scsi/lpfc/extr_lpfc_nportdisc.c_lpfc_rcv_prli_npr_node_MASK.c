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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  lsRjtRsnCodeExp; int /*<<< orphan*/  lsRjtRsnCode; } ;
struct TYPE_4__ {int /*<<< orphan*/  lsRjtError; TYPE_1__ b; } ;
struct ls_rjt {TYPE_2__ un; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int /*<<< orphan*/  nlp_state; int /*<<< orphan*/  nlp_DID; void* nlp_prev_state; } ;
struct lpfc_iocbq {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSEXP_NOTHING_MORE ; 
 int /*<<< orphan*/  LSRJT_UNABLE_TPC ; 
 int NLP_DELAY_TMO ; 
 int NLP_NPR_ADISC ; 
 int /*<<< orphan*/  NLP_STE_ADISC_ISSUE ; 
 void* NLP_STE_NPR_NODE ; 
 int /*<<< orphan*/  NLP_STE_PLOGI_ISSUE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,struct lpfc_iocbq*,struct lpfc_nodelist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (struct ls_rjt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC8(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
		       void *arg, uint32_t evt)
{
	struct Scsi_Host  *shost = FUNC4(vport);
	struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;
	struct ls_rjt     stat;

	FUNC5(&stat, 0, sizeof (struct ls_rjt));
	stat.un.b.lsRjtRsnCode = LSRJT_UNABLE_TPC;
	stat.un.b.lsRjtRsnCodeExp = LSEXP_NOTHING_MORE;
	FUNC0(vport, stat.un.lsRjtError, cmdiocb, ndlp, NULL);

	if (!(ndlp->nlp_flag & NLP_DELAY_TMO)) {
		if (ndlp->nlp_flag & NLP_NPR_ADISC) {
			FUNC6(shost->host_lock);
			ndlp->nlp_flag &= ~NLP_NPR_ADISC;
			ndlp->nlp_prev_state = NLP_STE_NPR_NODE;
			FUNC7(shost->host_lock);
			FUNC3(vport, ndlp, NLP_STE_ADISC_ISSUE);
			FUNC1(vport, ndlp, 0);
		} else {
			ndlp->nlp_prev_state = NLP_STE_NPR_NODE;
			FUNC3(vport, ndlp, NLP_STE_PLOGI_ISSUE);
			FUNC2(vport, ndlp->nlp_DID, 0);
		}
	}
	return ndlp->nlp_state;
}