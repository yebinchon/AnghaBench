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
struct lpfc_hba {int /*<<< orphan*/  pcidev; TYPE_1__* msix_entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int LPFC_MSIX_VECTORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct lpfc_hba *phba)
{
	int i;

	/* Free up MSI-X multi-message vectors */
	for (i = 0; i < LPFC_MSIX_VECTORS; i++)
		FUNC0(phba->msix_entries[i].vector, phba);
	/* Disable MSI-X */
	FUNC1(phba->pcidev);

	return;
}