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
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcount; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_rpi; TYPE_1__ kref; int /*<<< orphan*/  nlp_usg_map; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  ndlp_lock; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_NODE ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_NODE ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 scalar_t__ FUNC1 (struct lpfc_nodelist*) ; 
 int NLP_STE_UNUSED_NODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,struct lpfc_nodelist*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

struct lpfc_nodelist *
FUNC11(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
		 int state)
{
	struct lpfc_hba *phba = vport->phba;
	uint32_t did;
	unsigned long flags;

	if (!ndlp)
		return NULL;

	FUNC9(&phba->ndlp_lock, flags);
	/* The ndlp should not be in memory free mode */
	if (FUNC0(ndlp)) {
		FUNC10(&phba->ndlp_lock, flags);
		FUNC6(vport, KERN_WARNING, LOG_NODE,
				"0277 lpfc_enable_node: ndlp:x%p "
				"usgmap:x%x refcnt:%d\n",
				(void *)ndlp, ndlp->nlp_usg_map,
				FUNC2(&ndlp->kref.refcount));
		return NULL;
	}
	/* The ndlp should not already be in active mode */
	if (FUNC1(ndlp)) {
		FUNC10(&phba->ndlp_lock, flags);
		FUNC6(vport, KERN_WARNING, LOG_NODE,
				"0278 lpfc_enable_node: ndlp:x%p "
				"usgmap:x%x refcnt:%d\n",
				(void *)ndlp, ndlp->nlp_usg_map,
				FUNC2(&ndlp->kref.refcount));
		return NULL;
	}

	/* Keep the original DID */
	did = ndlp->nlp_DID;

	/* re-initialize ndlp except of ndlp linked list pointer */
	FUNC8((((char *)ndlp) + sizeof (struct list_head)), 0,
		sizeof (struct lpfc_nodelist) - sizeof (struct list_head));
	FUNC4(vport, ndlp, did);

	FUNC10(&phba->ndlp_lock, flags);
	if (vport->phba->sli_rev == LPFC_SLI_REV4)
		ndlp->nlp_rpi = FUNC7(vport->phba);


	if (state != NLP_STE_UNUSED_NODE)
		FUNC5(vport, ndlp, state);

	FUNC3(vport, LPFC_DISC_TRC_NODE,
		"node enable:       did:x%x",
		ndlp->nlp_DID, 0, 0);
	return ndlp;
}