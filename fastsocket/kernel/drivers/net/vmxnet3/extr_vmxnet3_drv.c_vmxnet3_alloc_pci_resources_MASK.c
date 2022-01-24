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
struct vmxnet3_adapter {void* hw_addr0; void* hw_addr1; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 int FUNC7 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (struct pci_dev*,int) ; 
 unsigned long FUNC9 (struct pci_dev*,int) ; 
 scalar_t__ FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  vmxnet3_driver_name ; 

__attribute__((used)) static int
FUNC13(struct vmxnet3_adapter *adapter, bool *dma64)
{
	int err;
	unsigned long mmio_start, mmio_len;
	struct pci_dev *pdev = adapter->pdev;

	err = FUNC5(pdev);
	if (err) {
		FUNC1(&pdev->dev, "Failed to enable adapter: error %d\n", err);
		return err;
	}

	if (FUNC11(pdev, FUNC0(64)) == 0) {
		if (FUNC10(pdev, FUNC0(64)) != 0) {
			FUNC1(&pdev->dev,
				"pci_set_consistent_dma_mask failed\n");
			err = -EIO;
			goto err_set_mask;
		}
		*dma64 = true;
	} else {
		if (FUNC11(pdev, FUNC0(32)) != 0) {
			FUNC1(&pdev->dev,
				"pci_set_dma_mask failed\n");
			err = -EIO;
			goto err_set_mask;
		}
		*dma64 = false;
	}

	err = FUNC7(pdev, (1 << 2) - 1,
					   vmxnet3_driver_name);
	if (err) {
		FUNC1(&pdev->dev,
			"Failed to request region for adapter: error %d\n", err);
		goto err_set_mask;
	}

	FUNC12(pdev);

	mmio_start = FUNC9(pdev, 0);
	mmio_len = FUNC8(pdev, 0);
	adapter->hw_addr0 = FUNC2(mmio_start, mmio_len);
	if (!adapter->hw_addr0) {
		FUNC1(&pdev->dev, "Failed to map bar0\n");
		err = -EIO;
		goto err_ioremap;
	}

	mmio_start = FUNC9(pdev, 1);
	mmio_len = FUNC8(pdev, 1);
	adapter->hw_addr1 = FUNC2(mmio_start, mmio_len);
	if (!adapter->hw_addr1) {
		FUNC1(&pdev->dev, "Failed to map bar1\n");
		err = -EIO;
		goto err_bar1;
	}
	return 0;

err_bar1:
	FUNC3(adapter->hw_addr0);
err_ioremap:
	FUNC6(pdev, (1 << 2) - 1);
err_set_mask:
	FUNC4(pdev);
	return err;
}