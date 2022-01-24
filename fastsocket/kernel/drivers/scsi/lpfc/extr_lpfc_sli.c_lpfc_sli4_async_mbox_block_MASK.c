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
struct lpfc_sli {int /*<<< orphan*/  sli_flag; scalar_t__ mbox_active; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; struct lpfc_sli sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_SLI_ASYNC_MBX_BLK ; 
 unsigned long jiffies ; 
 int FUNC0 (struct lpfc_hba*,scalar_t__) ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_hba *phba)
{
	struct lpfc_sli *psli = &phba->sli;
	int rc = 0;
	unsigned long timeout = 0;

	/* Mark the asynchronous mailbox command posting as blocked */
	FUNC3(&phba->hbalock);
	psli->sli_flag |= LPFC_SLI_ASYNC_MBX_BLK;
	/* Determine how long we might wait for the active mailbox
	 * command to be gracefully completed by firmware.
	 */
	if (phba->sli.mbox_active)
		timeout = FUNC1(FUNC0(phba,
						phba->sli.mbox_active) *
						1000) + jiffies;
	FUNC4(&phba->hbalock);

	/* Wait for the outstnading mailbox command to complete */
	while (phba->sli.mbox_active) {
		/* Check active mailbox complete status every 2ms */
		FUNC2(2);
		if (FUNC5(jiffies, timeout)) {
			/* Timeout, marked the outstanding cmd not complete */
			rc = 1;
			break;
		}
	}

	/* Can not cleanly block async mailbox command, fails it */
	if (rc) {
		FUNC3(&phba->hbalock);
		psli->sli_flag &= ~LPFC_SLI_ASYNC_MBX_BLK;
		FUNC4(&phba->hbalock);
	}
	return rc;
}