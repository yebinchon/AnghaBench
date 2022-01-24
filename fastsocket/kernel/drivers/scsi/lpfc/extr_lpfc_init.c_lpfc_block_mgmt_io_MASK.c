#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  sli_flag; TYPE_4__* mbox_active; } ;
struct lpfc_hba {TYPE_3__ sli; int /*<<< orphan*/  hbalock; } ;
struct TYPE_5__ {int /*<<< orphan*/  mbxCommand; } ;
struct TYPE_6__ {TYPE_1__ mb; } ;
struct TYPE_8__ {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  LPFC_BLOCK_MGMT_IO ; 
 int LPFC_MBOX_TMO ; 
 int LPFC_MBX_NO_WAIT ; 
 int /*<<< orphan*/  MBX_HEARTBEAT ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC0 (struct lpfc_hba*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct lpfc_hba *phba, int mbx_action)
{
	unsigned long iflag;
	uint8_t actcmd = MBX_HEARTBEAT;
	unsigned long timeout;

	FUNC4(&phba->hbalock, iflag);
	phba->sli.sli_flag |= LPFC_BLOCK_MGMT_IO;
	FUNC5(&phba->hbalock, iflag);
	if (mbx_action == LPFC_MBX_NO_WAIT)
		return;
	timeout = FUNC2(LPFC_MBOX_TMO * 1000) + jiffies;
	FUNC4(&phba->hbalock, iflag);
	if (phba->sli.mbox_active) {
		actcmd = phba->sli.mbox_active->u.mb.mbxCommand;
		/* Determine how long we might wait for the active mailbox
		 * command to be gracefully completed by firmware.
		 */
		timeout = FUNC2(FUNC0(phba,
				phba->sli.mbox_active) * 1000) + jiffies;
	}
	FUNC5(&phba->hbalock, iflag);

	/* Wait for the outstnading mailbox command to complete */
	while (phba->sli.mbox_active) {
		/* Check active mailbox complete status every 2ms */
		FUNC3(2);
		if (FUNC6(jiffies, timeout)) {
			FUNC1(phba, KERN_ERR, LOG_SLI,
				"2813 Mgmt IO is Blocked %x "
				"- mbox cmd %x still active\n",
				phba->sli.sli_flag, actcmd);
			break;
		}
	}
}