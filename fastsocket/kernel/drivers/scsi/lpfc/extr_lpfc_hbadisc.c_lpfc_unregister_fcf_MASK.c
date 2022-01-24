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
struct TYPE_2__ {int /*<<< orphan*/  fcf_flag; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; TYPE_1__ fcf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCF_REGISTERED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_DISCOVERY ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct lpfc_hba*) ; 
 int FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct lpfc_hba *phba)
{
	int rc;

	/* Preparation for unregistering fcf */
	rc = FUNC2(phba);
	if (rc) {
		FUNC0(phba, KERN_ERR, LOG_DISCOVERY,
				"2749 Failed to prepare for unregistering "
				"HBA's FCF record: rc=%d\n", rc);
		return;
	}

	/* Now, unregister FCF record and reset HBA FCF state */
	rc = FUNC1(phba);
	if (rc)
		return;
	/* Set proper HBA FCF states after successful unregister FCF */
	FUNC3(&phba->hbalock);
	phba->fcf.fcf_flag &= ~FCF_REGISTERED;
	FUNC4(&phba->hbalock);
}