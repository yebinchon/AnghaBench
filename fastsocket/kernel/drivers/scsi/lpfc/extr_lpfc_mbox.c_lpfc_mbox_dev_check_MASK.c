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
struct lpfc_hba {scalar_t__ link_state; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(struct lpfc_hba *phba)
{
	/* If the PCI channel is in offline state, do not issue mbox */
	if (FUNC1(FUNC0(phba->pcidev)))
		return -ENODEV;

	/* If the HBA is in error state, do not issue mbox */
	if (phba->link_state == LPFC_HBA_ERROR)
		return -ENODEV;

	return 0;
}