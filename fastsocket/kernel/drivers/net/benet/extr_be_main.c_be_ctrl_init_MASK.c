#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct be_mcc_mailbox {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/ * dma; int /*<<< orphan*/ * va; } ;
struct be_cmd_req_rx_filter {int dummy; } ;
struct be_adapter {int sli_family; int virtfn; TYPE_1__* pdev; int /*<<< orphan*/  flash_compl; int /*<<< orphan*/  mcc_cq_lock; int /*<<< orphan*/  mcc_lock; int /*<<< orphan*/  mbox_lock; struct be_dma_mem rx_filter; struct be_dma_mem mbox_mem; struct be_dma_mem mbox_mem_alloced; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int SLI_INTF_FAMILY_MASK ; 
 int SLI_INTF_FAMILY_SHIFT ; 
 int SLI_INTF_FT_MASK ; 
 int /*<<< orphan*/  SLI_INTF_REG_OFFSET ; 
 int __GFP_ZERO ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct be_adapter *adapter)
{
	struct be_dma_mem *mbox_mem_alloc = &adapter->mbox_mem_alloced;
	struct be_dma_mem *mbox_mem_align = &adapter->mbox_mem;
	struct be_dma_mem *rx_filter = &adapter->rx_filter;
	u32 sli_intf;
	int status;

	FUNC8(adapter->pdev, SLI_INTF_REG_OFFSET, &sli_intf);
	adapter->sli_family = (sli_intf & SLI_INTF_FAMILY_MASK) >>
				 SLI_INTF_FAMILY_SHIFT;
	adapter->virtfn = (sli_intf & SLI_INTF_FT_MASK) ? 1 : 0;

	status = FUNC1(adapter);
	if (status)
		goto done;

	mbox_mem_alloc->size = sizeof(struct be_mcc_mailbox) + 16;
	mbox_mem_alloc->va = FUNC3(&adapter->pdev->dev,
						mbox_mem_alloc->size,
						&mbox_mem_alloc->dma,
						GFP_KERNEL);
	if (!mbox_mem_alloc->va) {
		status = -ENOMEM;
		goto unmap_pci_bars;
	}
	mbox_mem_align->size = sizeof(struct be_mcc_mailbox);
	mbox_mem_align->va = FUNC0(mbox_mem_alloc->va, 16);
	mbox_mem_align->dma = FUNC0(mbox_mem_alloc->dma, 16);
	FUNC6(mbox_mem_align->va, 0, sizeof(struct be_mcc_mailbox));

	rx_filter->size = sizeof(struct be_cmd_req_rx_filter);
	rx_filter->va = FUNC3(&adapter->pdev->dev, rx_filter->size,
					   &rx_filter->dma,
					   GFP_KERNEL | __GFP_ZERO);
	if (rx_filter->va == NULL) {
		status = -ENOMEM;
		goto free_mbox;
	}

	FUNC7(&adapter->mbox_lock);
	FUNC10(&adapter->mcc_lock);
	FUNC10(&adapter->mcc_cq_lock);

	FUNC5(&adapter->flash_compl);
	FUNC9(adapter->pdev);
	return 0;

free_mbox:
	FUNC4(&adapter->pdev->dev, mbox_mem_alloc->size,
			  mbox_mem_alloc->va, mbox_mem_alloc->dma);

unmap_pci_bars:
	FUNC2(adapter);

done:
	return status;
}