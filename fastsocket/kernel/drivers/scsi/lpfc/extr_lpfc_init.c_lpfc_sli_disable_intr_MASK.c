#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ sli_intr; } ;
struct TYPE_6__ {TYPE_2__ slistat; } ;
struct lpfc_hba {scalar_t__ intr_type; TYPE_3__ sli; TYPE_1__* pcidev; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ INTx ; 
 scalar_t__ MSI ; 
 scalar_t__ MSIX ; 
 scalar_t__ NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba)
{
	/* Disable the currently initialized interrupt mode */
	if (phba->intr_type == MSIX)
		FUNC2(phba);
	else if (phba->intr_type == MSI)
		FUNC1(phba);
	else if (phba->intr_type == INTx)
		FUNC0(phba->pcidev->irq, phba);

	/* Reset interrupt management states */
	phba->intr_type = NONE;
	phba->sli.slistat.sli_intr = 0;

	return;
}