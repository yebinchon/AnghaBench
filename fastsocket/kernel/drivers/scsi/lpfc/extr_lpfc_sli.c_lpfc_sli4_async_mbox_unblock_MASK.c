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
struct lpfc_sli {int sli_flag; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; struct lpfc_sli sli; } ;

/* Variables and functions */
 int LPFC_SLI_ASYNC_MBX_BLK ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba)
{
	struct lpfc_sli *psli = &phba->sli;

	FUNC1(&phba->hbalock);
	if (!(psli->sli_flag & LPFC_SLI_ASYNC_MBX_BLK)) {
		/* Asynchronous mailbox posting is not blocked, do nothing */
		FUNC2(&phba->hbalock);
		return;
	}

	/* Outstanding synchronous mailbox command is guaranteed to be done,
	 * successful or timeout, after timing-out the outstanding mailbox
	 * command shall always be removed, so just unblock posting async
	 * mailbox command and resume
	 */
	psli->sli_flag &= ~LPFC_SLI_ASYNC_MBX_BLK;
	FUNC2(&phba->hbalock);

	/* wake up worker thread to post asynchronlous mailbox command */
	FUNC0(phba);
}