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
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int /*<<< orphan*/  nlp_listp; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NLP_STE_UNUSED_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,struct lpfc_nodelist*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
	struct Scsi_Host *shost = FUNC5(vport);

	FUNC2(vport, ndlp);
	if (ndlp->nlp_state && !FUNC1(&ndlp->nlp_listp))
		FUNC3(vport, ndlp->nlp_state, -1);
	FUNC6(shost->host_lock);
	FUNC0(&ndlp->nlp_listp);
	FUNC7(shost->host_lock);
	FUNC4(vport, ndlp, ndlp->nlp_state,
				NLP_STE_UNUSED_NODE);
}