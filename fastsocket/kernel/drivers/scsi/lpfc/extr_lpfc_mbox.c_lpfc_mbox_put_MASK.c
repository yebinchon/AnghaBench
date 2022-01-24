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
struct lpfc_sli {int /*<<< orphan*/  mboxq_cnt; int /*<<< orphan*/  mboxq; } ;
struct lpfc_hba {struct lpfc_sli sli; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC1(struct lpfc_hba * phba, LPFC_MBOXQ_t * mbq)
{
	struct lpfc_sli *psli;

	psli = &phba->sli;

	FUNC0(&mbq->list, &psli->mboxq);

	psli->mboxq_cnt++;

	return;
}