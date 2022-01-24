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
typedef  int uint32_t ;
struct lpfc_hba {scalar_t__ HAregaddr; scalar_t__ HCregaddr; void* link_state; scalar_t__ MBslimaddr; int /*<<< orphan*/  HSregaddr; TYPE_1__* pport; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_state; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int HS_FFERM ; 
 int HS_FFRDY ; 
 int HS_MBRDY ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 void* LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  LPFC_VPORT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_hba *phba)
{
	uint32_t status, i = 0;

	/* Read the HBA Host Status Register */
	if (FUNC1(phba->HSregaddr, &status))
		return -EIO;

	/* Check status register to see what current state is */
	i = 0;
	while ((status & (HS_FFRDY | HS_MBRDY)) != (HS_FFRDY | HS_MBRDY)) {

		/* Check every 10ms for 10 retries, then every 100ms for 90
		 * retries, then every 1 sec for 50 retires for a total of
		 * ~60 seconds before reset the board again and check every
		 * 1 sec for 50 retries. The up to 60 seconds before the
		 * board ready is required by the Falcon FIPS zeroization
		 * complete, and any reset the board in between shall cause
		 * restart of zeroization, further delay the board ready.
		 */
		if (i++ >= 200) {
			/* Adapter failed to init, timeout, status reg
			   <status> */
			FUNC0(phba, KERN_ERR, LOG_INIT,
					"0436 Adapter failed to init, "
					"timeout, status reg x%x, "
					"FW Data: A8 x%x AC x%x\n", status,
					FUNC4(phba->MBslimaddr + 0xa8),
					FUNC4(phba->MBslimaddr + 0xac));
			phba->link_state = LPFC_HBA_ERROR;
			return -ETIMEDOUT;
		}

		/* Check to see if any errors occurred during init */
		if (status & HS_FFERM) {
			/* ERROR: During chipset initialization */
			/* Adapter failed to init, chipset, status reg
			   <status> */
			FUNC0(phba, KERN_ERR, LOG_INIT,
					"0437 Adapter failed to init, "
					"chipset, status reg x%x, "
					"FW Data: A8 x%x AC x%x\n", status,
					FUNC4(phba->MBslimaddr + 0xa8),
					FUNC4(phba->MBslimaddr + 0xac));
			phba->link_state = LPFC_HBA_ERROR;
			return -EIO;
		}

		if (i <= 10)
			FUNC3(10);
		else if (i <= 100)
			FUNC3(100);
		else
			FUNC3(1000);

		if (i == 150) {
			/* Do post */
			phba->pport->port_state = LPFC_VPORT_UNKNOWN;
			FUNC2(phba);
		}
		/* Read the HBA Host Status Register */
		if (FUNC1(phba->HSregaddr, &status))
			return -EIO;
	}

	/* Check to see if any errors occurred during init */
	if (status & HS_FFERM) {
		/* ERROR: During chipset initialization */
		/* Adapter failed to init, chipset, status reg <status> */
		FUNC0(phba, KERN_ERR, LOG_INIT,
				"0438 Adapter failed to init, chipset, "
				"status reg x%x, "
				"FW Data: A8 x%x AC x%x\n", status,
				FUNC4(phba->MBslimaddr + 0xa8),
				FUNC4(phba->MBslimaddr + 0xac));
		phba->link_state = LPFC_HBA_ERROR;
		return -EIO;
	}

	/* Clear all interrupt enable conditions */
	FUNC5(0, phba->HCregaddr);
	FUNC4(phba->HCregaddr); /* flush */

	/* setup host attn register */
	FUNC5(0xffffffff, phba->HAregaddr);
	FUNC4(phba->HAregaddr); /* flush */
	return 0;
}