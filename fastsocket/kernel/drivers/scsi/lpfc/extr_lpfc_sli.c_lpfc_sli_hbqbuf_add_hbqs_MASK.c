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
typedef  size_t uint32_t ;
struct lpfc_hba {scalar_t__ sli_rev; } ;
struct TYPE_2__ {int /*<<< orphan*/  add_count; } ;

/* Variables and functions */
 scalar_t__ LPFC_SLI_REV4 ; 
 TYPE_1__** lpfc_hbq_defs ; 
 int FUNC0 (struct lpfc_hba*,size_t,int /*<<< orphan*/ ) ; 

int
FUNC1(struct lpfc_hba *phba, uint32_t qno)
{
	if (phba->sli_rev == LPFC_SLI_REV4)
		return 0;
	else
		return FUNC0(phba, qno,
					 lpfc_hbq_defs[qno]->add_count);
}