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
struct TYPE_2__ {int /*<<< orphan*/ * ring; } ;
struct lpfc_hba {int cfg_poll; TYPE_1__ sli; } ;

/* Variables and functions */
 int DISABLE_FCP_RING_INT ; 
 int ENABLE_FCP_RING_POLLING ; 
 int /*<<< orphan*/  HA_R0RE_REQ ; 
 size_t LPFC_FCP_RING ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(unsigned long ptr)
{
	struct lpfc_hba *phba = (struct lpfc_hba *) ptr;

	if (phba->cfg_poll & ENABLE_FCP_RING_POLLING) {
		FUNC1(phba,
			&phba->sli.ring[LPFC_FCP_RING], HA_R0RE_REQ);

		if (phba->cfg_poll & DISABLE_FCP_RING_INT)
			FUNC0(phba);
	}
}