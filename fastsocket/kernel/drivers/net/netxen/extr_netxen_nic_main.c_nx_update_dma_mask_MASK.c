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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  coherent_dma_mask; } ;
struct pci_dev {TYPE_2__ dev; int /*<<< orphan*/  dma_mask; } ;
struct TYPE_3__ {scalar_t__ revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_DMA_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NX_P2_C1 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct netxen_adapter *adapter)
{
	int change, shift, err;
	uint64_t mask, old_mask, old_cmask;
	struct pci_dev *pdev = adapter->pdev;

	change = 0;

	shift = FUNC1(adapter, CRB_DMA_SHIFT);
	if (shift > 32)
		return 0;

	if (FUNC2(adapter->ahw.revision_id) && (shift > 9))
		change = 1;
	else if ((adapter->ahw.revision_id == NX_P2_C1) && (shift <= 4))
		change = 1;

	if (change) {
		old_mask = pdev->dma_mask;
		old_cmask = pdev->dev.coherent_dma_mask;

		mask = FUNC0(32+shift);

		err = FUNC5(pdev, mask);
		if (err)
			goto err_out;

		if (FUNC2(adapter->ahw.revision_id)) {

			err = FUNC4(pdev, mask);
			if (err)
				goto err_out;
		}
		FUNC3(&pdev->dev, "using %d-bit dma mask\n", 32+shift);
	}

	return 0;

err_out:
	FUNC5(pdev, old_mask);
	FUNC4(pdev, old_cmask);
	return err;
}