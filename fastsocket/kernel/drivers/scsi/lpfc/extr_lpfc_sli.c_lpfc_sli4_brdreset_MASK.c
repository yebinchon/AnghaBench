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
typedef  int uint16_t ;
struct lpfc_sli {int /*<<< orphan*/  sli_flag; } ;
struct TYPE_4__ {scalar_t__ fcf_flag; } ;
struct lpfc_hba {int /*<<< orphan*/  pcidev; int /*<<< orphan*/  hbalock; TYPE_2__ fcf; TYPE_1__* pport; scalar_t__ link_events; scalar_t__ fc_eventTag; struct lpfc_sli sli; } ;
struct TYPE_3__ {scalar_t__ fc_prevDID; scalar_t__ fc_myDID; int /*<<< orphan*/  port_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  LPFC_PROCESS_LA ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_PARITY ; 
 int PCI_COMMAND_SERR ; 
 int FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct lpfc_hba *phba)
{
	struct lpfc_sli *psli = &phba->sli;
	uint16_t cfg_value;
	int rc;

	/* Reset HBA */
	FUNC1(phba, KERN_INFO, LOG_SLI,
			"0295 Reset HBA Data: x%x x%x\n",
			phba->pport->port_state, psli->sli_flag);

	/* perform board reset */
	phba->fc_eventTag = 0;
	phba->link_events = 0;
	phba->pport->fc_myDID = 0;
	phba->pport->fc_prevDID = 0;

	FUNC5(&phba->hbalock);
	psli->sli_flag &= ~(LPFC_PROCESS_LA);
	phba->fcf.fcf_flag = 0;
	FUNC6(&phba->hbalock);

	/* Now physically reset the device */
	FUNC1(phba, KERN_INFO, LOG_INIT,
			"0389 Performing PCI function reset!\n");

	/* Turn off parity checking and serr during the physical reset */
	FUNC3(phba->pcidev, PCI_COMMAND, &cfg_value);
	FUNC4(phba->pcidev, PCI_COMMAND, (cfg_value &
			      ~(PCI_COMMAND_PARITY | PCI_COMMAND_SERR)));

	/* Perform FCoE PCI function reset before freeing queue memory */
	rc = FUNC0(phba);
	FUNC2(phba);

	/* Restore PCI cmd register */
	FUNC4(phba->pcidev, PCI_COMMAND, cfg_value);

	return rc;
}