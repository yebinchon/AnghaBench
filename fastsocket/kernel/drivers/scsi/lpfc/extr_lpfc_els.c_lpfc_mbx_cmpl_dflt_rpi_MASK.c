#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lpfc_nodelist {int /*<<< orphan*/  vport; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_4__ {int /*<<< orphan*/ * context2; int /*<<< orphan*/ * context1; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC7(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *) (pmb->context1);
	struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) pmb->context2;

	pmb->context1 = NULL;
	pmb->context2 = NULL;

	FUNC3(phba, mp->virt, mp->phys);
	FUNC1(mp);
	FUNC6(pmb, phba->mbox_mem_pool);
	if (ndlp) {
		if (FUNC0(ndlp)) {
			FUNC5(ndlp);
			/* This is the end of the default RPI cleanup logic for
			 * this ndlp. If no other discovery threads are using
			 * this ndlp, free all resources associated with it.
			 */
			FUNC4(ndlp);
		} else {
			FUNC2(ndlp->vport, ndlp);
		}
	}

	return;
}