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
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int /*<<< orphan*/  nlp_mem_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  Fabric_DID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  NLP_STE_UNUSED_NODE ; 
 struct lpfc_nodelist* FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 struct lpfc_nodelist* FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_nodelist*) ; 
 struct lpfc_nodelist* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct lpfc_vport *vport)
{
	struct lpfc_hba *phba = vport->phba;
	struct lpfc_nodelist *ndlp;

	/* First look for the Fabric ndlp */
	ndlp = FUNC3(vport, Fabric_DID);
	if (!ndlp) {
		/* Cannot find existing Fabric ndlp, so allocate a new one */
		ndlp = FUNC7(phba->nlp_mem_pool, GFP_KERNEL);
		if (!ndlp)
			return 0;
		FUNC5(vport, ndlp, Fabric_DID);
		/* Put ndlp onto node list */
		FUNC2(vport, ndlp);
	} else if (!FUNC0(ndlp)) {
		/* re-setup ndlp without removing from node list */
		ndlp = FUNC1(vport, ndlp, NLP_STE_UNUSED_NODE);
		if (!ndlp)
			return 0;
	}

	if (FUNC4(vport, ndlp, 0)) {
		/* decrement node reference count to trigger the release of
		 * the node.
		 */
		FUNC6(ndlp);
		return 0;
	}
	return 1;
}