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
struct TYPE_2__ {int /*<<< orphan*/  sp_cqe_event_pool; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
struct lpfc_cq_event {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC1(struct lpfc_hba *phba,
			     struct lpfc_cq_event *cq_event)
{
	FUNC0(&cq_event->list, &phba->sli4_hba.sp_cqe_event_pool);
}