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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {int fcf_flag; } ;
struct lpfc_hba {scalar_t__ link_state; scalar_t__ fcoe_eventtag; scalar_t__ fcoe_eventtag_at_fcf_scan; int hba_flag; int /*<<< orphan*/  hbalock; TYPE_1__ fcf; } ;

/* Variables and functions */
 int FCF_AVAILABLE ; 
 int FCF_DISCOVERY ; 
 int FCF_REDISC_FOV ; 
 int FCF_REGISTERED ; 
 int FCF_RR_INPROG ; 
 int FCF_TS_INPROG ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int LOG_DISCOVERY ; 
 int LOG_FIP ; 
 int /*<<< orphan*/  LPFC_FCOE_FCF_GET_FIRST ; 
 scalar_t__ LPFC_LINK_UP ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct lpfc_hba *phba, uint8_t unreg_fcf)
{
	/*
	 * If the Link is up and no FCoE events while in the
	 * FCF discovery, no need to restart FCF discovery.
	 */
	if ((phba->link_state  >= LPFC_LINK_UP) &&
	    (phba->fcoe_eventtag == phba->fcoe_eventtag_at_fcf_scan))
		return 0;

	FUNC0(phba, KERN_INFO, LOG_FIP,
			"2768 Pending link or FCF event during current "
			"handling of the previous event: link_state:x%x, "
			"evt_tag_at_scan:x%x, evt_tag_current:x%x\n",
			phba->link_state, phba->fcoe_eventtag_at_fcf_scan,
			phba->fcoe_eventtag);

	FUNC3(&phba->hbalock);
	phba->fcf.fcf_flag &= ~FCF_AVAILABLE;
	FUNC4(&phba->hbalock);

	if (phba->link_state >= LPFC_LINK_UP) {
		FUNC0(phba, KERN_INFO, LOG_FIP | LOG_DISCOVERY,
				"2780 Restart FCF table scan due to "
				"pending FCF event:evt_tag_at_scan:x%x, "
				"evt_tag_current:x%x\n",
				phba->fcoe_eventtag_at_fcf_scan,
				phba->fcoe_eventtag);
		FUNC1(phba, LPFC_FCOE_FCF_GET_FIRST);
	} else {
		/*
		 * Do not continue FCF discovery and clear FCF_TS_INPROG
		 * flag
		 */
		FUNC0(phba, KERN_INFO, LOG_FIP | LOG_DISCOVERY,
				"2833 Stop FCF discovery process due to link "
				"state change (x%x)\n", phba->link_state);
		FUNC3(&phba->hbalock);
		phba->hba_flag &= ~(FCF_TS_INPROG | FCF_RR_INPROG);
		phba->fcf.fcf_flag &= ~(FCF_REDISC_FOV | FCF_DISCOVERY);
		FUNC4(&phba->hbalock);
	}

	/* Unregister the currently registered FCF if required */
	if (unreg_fcf) {
		FUNC3(&phba->hbalock);
		phba->fcf.fcf_flag &= ~FCF_REGISTERED;
		FUNC4(&phba->hbalock);
		FUNC2(phba);
	}
	return 1;
}