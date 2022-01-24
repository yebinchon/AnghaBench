#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {struct beiscsi_hba* be_eq; } ;
struct TYPE_7__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  va; int /*<<< orphan*/  size; } ;
struct TYPE_8__ {TYPE_2__ mbox_mem_alloced; } ;
struct beiscsi_hba {unsigned int num_cpus; int /*<<< orphan*/  beiscsi_hw_check_task; TYPE_3__ ctrl; TYPE_4__* pcidev; int /*<<< orphan*/  iopoll; int /*<<< orphan*/  wq; int /*<<< orphan*/ * msi_name; TYPE_1__* msix_entries; scalar_t__ msix_enabled; struct hwi_controller* phwi_ctrlr; } ;
struct be_eq_obj {unsigned int num_cpus; int /*<<< orphan*/  beiscsi_hw_check_task; TYPE_3__ ctrl; TYPE_4__* pcidev; int /*<<< orphan*/  iopoll; int /*<<< orphan*/  wq; int /*<<< orphan*/ * msi_name; TYPE_1__* msix_entries; scalar_t__ msix_enabled; struct hwi_controller* phwi_ctrlr; } ;
struct TYPE_9__ {int irq; } ;
struct TYPE_6__ {unsigned int vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ blk_iopoll_enabled ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct beiscsi_hba *phba)
{
	struct hwi_controller *phwi_ctrlr;
	struct hwi_context_memory *phwi_context;
	struct be_eq_obj *pbe_eq;
	unsigned int i, msix_vec;

	phwi_ctrlr = phba->phwi_ctrlr;
	phwi_context = phwi_ctrlr->phwi_ctxt;
	FUNC7(phba);
	if (phba->msix_enabled) {
		for (i = 0; i <= phba->num_cpus; i++) {
			msix_vec = phba->msix_entries[i].vector;
			FUNC6(msix_vec, &phwi_context->be_eq[i]);
			FUNC8(phba->msi_name[i]);
		}
	} else
		if (phba->pcidev->irq)
			FUNC6(phba->pcidev->irq, phba);
	FUNC9(phba->pcidev);
	FUNC5(phba->wq);
	if (blk_iopoll_enabled)
		for (i = 0; i < phba->num_cpus; i++) {
			pbe_eq = &phwi_context->be_eq[i];
			FUNC3(&pbe_eq->iopoll);
		}

	FUNC0(phba);
	FUNC1(phba);

	FUNC2(phba);
	FUNC10(phba->pcidev,
			    phba->ctrl.mbox_mem_alloced.size,
			    phba->ctrl.mbox_mem_alloced.va,
			    phba->ctrl.mbox_mem_alloced.dma);

	FUNC4(&phba->beiscsi_hw_check_task);
}