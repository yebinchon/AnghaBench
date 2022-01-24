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
struct lpfc_nodelist {int nlp_flag; int /*<<< orphan*/  nlp_state; int /*<<< orphan*/  nlp_last_elscmd; int /*<<< orphan*/  nlp_delayfunc; } ;
struct lpfc_iocbq {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_ACC ; 
 int /*<<< orphan*/  ELS_CMD_PLOGI ; 
 int NLP_DELAY_TMO ; 
 int NLP_LOGO_ACC ; 
 int NLP_NPR_ADISC ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,struct lpfc_iocbq*,struct lpfc_nodelist*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC6(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
		       void *arg, uint32_t evt)
{
	struct Scsi_Host *shost = FUNC1(vport);
	struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;

	FUNC4(shost->host_lock);
	ndlp->nlp_flag |= NLP_LOGO_ACC;
	FUNC5(shost->host_lock);

	FUNC0(vport, ELS_CMD_ACC, cmdiocb, ndlp, NULL);

	if ((ndlp->nlp_flag & NLP_DELAY_TMO) == 0) {
		FUNC2(&ndlp->nlp_delayfunc,
			  jiffies + FUNC3(1000 * 1));
		FUNC4(shost->host_lock);
		ndlp->nlp_flag |= NLP_DELAY_TMO;
		ndlp->nlp_flag &= ~NLP_NPR_ADISC;
		FUNC5(shost->host_lock);
		ndlp->nlp_last_elscmd = ELS_CMD_PLOGI;
	} else {
		FUNC4(shost->host_lock);
		ndlp->nlp_flag &= ~NLP_NPR_ADISC;
		FUNC5(shost->host_lock);
	}
	return ndlp->nlp_state;
}