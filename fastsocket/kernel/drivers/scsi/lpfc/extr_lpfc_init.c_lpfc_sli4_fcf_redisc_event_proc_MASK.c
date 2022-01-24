#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ flag; } ;
struct TYPE_4__ {int /*<<< orphan*/  fcf_flag; TYPE_1__ failover_rec; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; TYPE_2__ fcf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCF_REDISC_EVT ; 
 int /*<<< orphan*/  FCF_REDISC_FOV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int LOG_DISCOVERY ; 
 int LOG_FIP ; 
 int /*<<< orphan*/  LPFC_FCOE_FCF_GET_FIRST ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct lpfc_hba *phba)
{
	int rc;

	FUNC2(&phba->hbalock);
	/* Clear FCF rediscovery timeout event */
	phba->fcf.fcf_flag &= ~FCF_REDISC_EVT;
	/* Clear driver fast failover FCF record flag */
	phba->fcf.failover_rec.flag = 0;
	/* Set state for FCF fast failover */
	phba->fcf.fcf_flag |= FCF_REDISC_FOV;
	FUNC3(&phba->hbalock);

	/* Scan FCF table from the first entry to re-discover SAN */
	FUNC0(phba, KERN_INFO, LOG_FIP | LOG_DISCOVERY,
			"2777 Start post-quiescent FCF table scan\n");
	rc = FUNC1(phba, LPFC_FCOE_FCF_GET_FIRST);
	if (rc)
		FUNC0(phba, KERN_ERR, LOG_FIP | LOG_DISCOVERY,
				"2747 Issue FCF scan read FCF mailbox "
				"command failed 0x%x\n", rc);
}