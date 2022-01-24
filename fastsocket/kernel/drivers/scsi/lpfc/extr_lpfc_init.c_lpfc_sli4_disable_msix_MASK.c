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
struct TYPE_4__ {int /*<<< orphan*/ * fcp_eq_hdl; TYPE_1__* msix_entries; } ;
struct lpfc_hba {int cfg_fcp_io_channel; int /*<<< orphan*/  pcidev; TYPE_2__ sli4_hba; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct lpfc_hba *phba)
{
	int index;

	/* Free up MSI-X multi-message vectors */
	for (index = 0; index < phba->cfg_fcp_io_channel; index++)
		FUNC0(phba->sli4_hba.msix_entries[index].vector,
			 &phba->sli4_hba.fcp_eq_hdl[index]);

	/* Disable MSI-X */
	FUNC1(phba->pcidev);

	return;
}