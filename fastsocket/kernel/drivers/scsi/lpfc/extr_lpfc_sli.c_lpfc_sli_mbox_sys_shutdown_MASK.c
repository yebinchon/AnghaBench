#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lpfc_sli {int sli_flag; scalar_t__ mbox_active; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; struct lpfc_sli sli; } ;

/* Variables and functions */
 int LPFC_MBOX_TMO ; 
 int LPFC_MBX_NO_WAIT ; 
 int LPFC_SLI_ACTIVE ; 
 int LPFC_SLI_ASYNC_MBX_BLK ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC0 (struct lpfc_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

void
FUNC7(struct lpfc_hba *phba, int mbx_action)
{
	struct lpfc_sli *psli = &phba->sli;
	unsigned long timeout;

	if (mbx_action == LPFC_MBX_NO_WAIT) {
		/* delay 100ms for port state */
		FUNC3(100);
		FUNC1(phba);
		return;
	}
	timeout = FUNC2(LPFC_MBOX_TMO * 1000) + jiffies;

	FUNC4(&phba->hbalock);
	psli->sli_flag |= LPFC_SLI_ASYNC_MBX_BLK;

	if (psli->sli_flag & LPFC_SLI_ACTIVE) {
		/* Determine how long we might wait for the active mailbox
		 * command to be gracefully completed by firmware.
		 */
		if (phba->sli.mbox_active)
			timeout = FUNC2(FUNC0(phba,
						phba->sli.mbox_active) *
						1000) + jiffies;
		FUNC5(&phba->hbalock);

		while (phba->sli.mbox_active) {
			/* Check active mailbox complete status every 2ms */
			FUNC3(2);
			if (FUNC6(jiffies, timeout))
				/* Timeout, let the mailbox flush routine to
				 * forcefully release active mailbox command
				 */
				break;
		}
	} else
		FUNC5(&phba->hbalock);

	FUNC1(phba);
}