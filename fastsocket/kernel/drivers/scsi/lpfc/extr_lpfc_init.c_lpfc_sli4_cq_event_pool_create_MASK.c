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
struct TYPE_2__ {int cq_ecount; int /*<<< orphan*/  sp_cqe_event_pool; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
struct lpfc_cq_event {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct lpfc_cq_event* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 

__attribute__((used)) static int
FUNC3(struct lpfc_hba *phba)
{
	struct lpfc_cq_event *cq_event;
	int i;

	for (i = 0; i < (4 * phba->sli4_hba.cq_ecount); i++) {
		cq_event = FUNC0(sizeof(struct lpfc_cq_event), GFP_KERNEL);
		if (!cq_event)
			goto out_pool_create_fail;
		FUNC1(&cq_event->list,
			      &phba->sli4_hba.sp_cqe_event_pool);
	}
	return 0;

out_pool_create_fail:
	FUNC2(phba);
	return -ENOMEM;
}