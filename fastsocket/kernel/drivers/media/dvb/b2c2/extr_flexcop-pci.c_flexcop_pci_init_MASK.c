#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct flexcop_pci {TYPE_1__* pdev; int /*<<< orphan*/  io_mem; int /*<<< orphan*/  init_state; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EIO ; 
 int /*<<< orphan*/  FC_PCI_INIT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  flexcop_pci_isr ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct flexcop_pci*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flexcop_pci*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct flexcop_pci *fc_pci)
{
	int ret;
	u8 card_rev;

	FUNC6(fc_pci->pdev, PCI_CLASS_REVISION, &card_rev);
	FUNC1("card revision %x", card_rev);

	if ((ret = FUNC3(fc_pci->pdev)) != 0)
		return ret;
	FUNC10(fc_pci->pdev);

	if ((ret = FUNC8(fc_pci->pdev, DRIVER_NAME)) != 0)
		goto err_pci_disable_device;

	fc_pci->io_mem = FUNC4(fc_pci->pdev, 0, 0x800);

	if (!fc_pci->io_mem) {
		FUNC0("cannot map io memory\n");
		ret = -EIO;
		goto err_pci_release_regions;
	}

	FUNC9(fc_pci->pdev, fc_pci);
	FUNC12(&fc_pci->irq_lock);
	if ((ret = FUNC11(fc_pci->pdev->irq, flexcop_pci_isr,
					IRQF_SHARED, DRIVER_NAME, fc_pci)) != 0)
		goto err_pci_iounmap;

	fc_pci->init_state |= FC_PCI_INIT;
	return ret;

err_pci_iounmap:
	FUNC5(fc_pci->pdev, fc_pci->io_mem);
	FUNC9(fc_pci->pdev, NULL);
err_pci_release_regions:
	FUNC7(fc_pci->pdev);
err_pci_disable_device:
	FUNC2(fc_pci->pdev);
	return ret;
}