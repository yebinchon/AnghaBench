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
struct TYPE_2__ {int /*<<< orphan*/  refcount; } ;
struct lpfc_nodelist {TYPE_1__ kref; int /*<<< orphan*/  nlp_usg_map; int /*<<< orphan*/  vport; struct lpfc_hba* phba; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; } ;
struct lpfc_hba {int /*<<< orphan*/  ndlp_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_NODE ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_NODE ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

struct lpfc_nodelist *
FUNC8(struct lpfc_nodelist *ndlp)
{
	struct lpfc_hba *phba;
	unsigned long flags;

	if (ndlp) {
		FUNC4(ndlp->vport, LPFC_DISC_TRC_NODE,
			"node get:        did:x%x flg:x%x refcnt:x%x",
			ndlp->nlp_DID, ndlp->nlp_flag,
			FUNC2(&ndlp->kref.refcount));
		/* The check of ndlp usage to prevent incrementing the
		 * ndlp reference count that is in the process of being
		 * released.
		 */
		phba = ndlp->phba;
		FUNC6(&phba->ndlp_lock, flags);
		if (!FUNC1(ndlp) || FUNC0(ndlp)) {
			FUNC7(&phba->ndlp_lock, flags);
			FUNC5(ndlp->vport, KERN_WARNING, LOG_NODE,
				"0276 lpfc_nlp_get: ndlp:x%p "
				"usgmap:x%x refcnt:%d\n",
				(void *)ndlp, ndlp->nlp_usg_map,
				FUNC2(&ndlp->kref.refcount));
			return NULL;
		} else
			FUNC3(&ndlp->kref);
		FUNC7(&phba->ndlp_lock, flags);
	}
	return ndlp;
}