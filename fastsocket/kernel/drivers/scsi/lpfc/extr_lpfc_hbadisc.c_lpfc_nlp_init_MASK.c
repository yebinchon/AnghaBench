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
struct lpfc_vport {TYPE_1__* phba; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_rpi; int /*<<< orphan*/  nlp_listp; } ;
struct TYPE_2__ {scalar_t__ sli_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_NODE ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_nodelist*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
	      uint32_t did)
{
	FUNC4(ndlp, 0, sizeof (struct lpfc_nodelist));

	FUNC2(vport, ndlp, did);
	FUNC0(&ndlp->nlp_listp);
	if (vport->phba->sli_rev == LPFC_SLI_REV4)
		ndlp->nlp_rpi = FUNC3(vport->phba);


	FUNC1(vport, LPFC_DISC_TRC_NODE,
		"node init:       did:x%x",
		ndlp->nlp_DID, 0, 0);

	return;
}