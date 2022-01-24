#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lpfc_nodelist {int /*<<< orphan*/  nlp_last_elscmd; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_delayfunc; } ;
struct lpfc_hba {TYPE_1__* pport; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  port_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_FLOGI ; 
 int /*<<< orphan*/  Fabric_DID ; 
 int /*<<< orphan*/  LPFC_FLOGI ; 
 int /*<<< orphan*/  NLP_DELAY_TMO ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 struct lpfc_nodelist* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct lpfc_hba *phba)
{
	struct lpfc_nodelist *ndlp;
	struct Scsi_Host  *shost;

	/* Cancel the all vports retry delay retry timers */
	FUNC0(phba);

	/* If fabric require FLOGI, then re-instantiate physical login */
	ndlp = FUNC1(phba->pport, Fabric_DID);
	if (!ndlp)
		return;

	shost = FUNC2(phba->pport);
	FUNC3(&ndlp->nlp_delayfunc, jiffies + FUNC4(1000));
	FUNC5(shost->host_lock);
	ndlp->nlp_flag |= NLP_DELAY_TMO;
	FUNC6(shost->host_lock);
	ndlp->nlp_last_elscmd = ELS_CMD_FLOGI;
	phba->pport->port_state = LPFC_FLOGI;
	return;
}