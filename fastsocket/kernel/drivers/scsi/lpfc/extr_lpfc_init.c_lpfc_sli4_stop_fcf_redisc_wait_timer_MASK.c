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
struct TYPE_2__ {int fcf_flag; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; TYPE_1__ fcf; } ;

/* Variables and functions */
 int FCF_ACVL_DISC ; 
 int FCF_DEAD_DISC ; 
 int FCF_REDISC_PEND ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct lpfc_hba *phba)
{
	FUNC1(&phba->hbalock);
	if (!(phba->fcf.fcf_flag & FCF_REDISC_PEND)) {
		/* FCF rediscovery timer already fired or stopped */
		FUNC2(&phba->hbalock);
		return;
	}
	FUNC0(phba);
	/* Clear failover in progress flags */
	phba->fcf.fcf_flag &= ~(FCF_DEAD_DISC | FCF_ACVL_DISC);
	FUNC2(&phba->hbalock);
}