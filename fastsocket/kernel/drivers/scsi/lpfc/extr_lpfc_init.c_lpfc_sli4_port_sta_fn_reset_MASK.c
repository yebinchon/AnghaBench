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
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_hba {int /*<<< orphan*/  intr_mode; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_INTR_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int) ; 
 int FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*) ; 

__attribute__((used)) static int
FUNC9(struct lpfc_hba *phba, int mbx_action)
{
	int rc;
	uint32_t intr_mode;

	/*
	 * On error status condition, driver need to wait for port
	 * ready before performing reset.
	 */
	rc = FUNC6(phba);
	if (!rc) {
		/* need reset: attempt for port recovery */
		FUNC3(phba, KERN_ERR, LOG_INIT,
				"2887 Reset Needed: Attempting Port "
				"Recovery...\n");
		FUNC1(phba, mbx_action);
		FUNC0(phba);
		/* release interrupt for possible resource change */
		FUNC4(phba);
		FUNC7(phba);
		/* request and enable interrupt */
		intr_mode = FUNC5(phba, phba->intr_mode);
		if (intr_mode == LPFC_INTR_ERROR) {
			FUNC3(phba, KERN_ERR, LOG_INIT,
					"3175 Failed to enable interrupt\n");
			return -EIO;
		} else {
			phba->intr_mode = intr_mode;
		}
		rc = FUNC2(phba);
		if (rc == 0)
			FUNC8(phba);
	}
	return rc;
}