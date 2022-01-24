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
struct pci_dev {int dummy; } ;
struct be_dma_mem {int size; void* va; void* dma; } ;
struct be_ctrl_info {int /*<<< orphan*/  mcc_cq_lock; int /*<<< orphan*/  mcc_lock; int /*<<< orphan*/  mbox_lock; struct pci_dev* pdev; struct be_dma_mem mbox_mem; struct be_dma_mem mbox_mem_alloced; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_mcc_mailbox {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (void*,int) ; 
 int FUNC1 (struct beiscsi_hba*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (struct pci_dev*,int,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct beiscsi_hba *phba, struct pci_dev *pdev)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_dma_mem *mbox_mem_alloc = &ctrl->mbox_mem_alloced;
	struct be_dma_mem *mbox_mem_align = &ctrl->mbox_mem;
	int status = 0;

	ctrl->pdev = pdev;
	status = FUNC1(phba, pdev);
	if (status)
		return status;
	mbox_mem_alloc->size = sizeof(struct be_mcc_mailbox) + 16;
	mbox_mem_alloc->va = FUNC4(pdev,
						  mbox_mem_alloc->size,
						  &mbox_mem_alloc->dma);
	if (!mbox_mem_alloc->va) {
		FUNC2(phba);
		return -ENOMEM;
	}

	mbox_mem_align->size = sizeof(struct be_mcc_mailbox);
	mbox_mem_align->va = FUNC0(mbox_mem_alloc->va, 16);
	mbox_mem_align->dma = FUNC0(mbox_mem_alloc->dma, 16);
	FUNC3(mbox_mem_align->va, 0, sizeof(struct be_mcc_mailbox));
	FUNC5(&ctrl->mbox_lock);
	FUNC5(&phba->ctrl.mcc_lock);
	FUNC5(&phba->ctrl.mcc_cq_lock);

	return status;
}