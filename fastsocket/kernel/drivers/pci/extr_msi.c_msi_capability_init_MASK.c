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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int msi_enabled; int /*<<< orphan*/  irq; int /*<<< orphan*/  msi_list; } ;
struct TYPE_2__ {int pos; scalar_t__ maskbit; int /*<<< orphan*/  is_64; int /*<<< orphan*/  default_irq; scalar_t__ entry_nr; scalar_t__ is_msix; } ;
struct msi_desc {int /*<<< orphan*/  irq; int /*<<< orphan*/  list; int /*<<< orphan*/  masked; int /*<<< orphan*/  mask_pos; TYPE_1__ msi_attrib; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_CAP_ID_MSI ; 
 struct msi_desc* FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct msi_desc*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int,int) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *dev, int nvec)
{
	struct msi_desc *entry;
	int pos, ret;
	u16 control;
	unsigned mask;

	pos = FUNC11(dev, PCI_CAP_ID_MSI);
	FUNC10(dev, pos, 0);	/* Disable MSI during set up */

	FUNC14(dev, FUNC7(pos), &control);
	/* MSI Entry Initialization */
	entry = FUNC0(dev);
	if (!entry)
		return -ENOMEM;

	entry->msi_attrib.is_msix	= 0;
	entry->msi_attrib.is_64		= FUNC3(control);
	entry->msi_attrib.entry_nr	= 0;
	entry->msi_attrib.maskbit	= FUNC4(control);
	entry->msi_attrib.default_irq	= dev->irq;	/* Save IOAPIC IRQ */
	entry->msi_attrib.pos		= pos;

	entry->mask_pos = FUNC9(pos, entry->msi_attrib.is_64);
	/* All MSIs are unmasked by default, Mask them all */
	if (entry->msi_attrib.maskbit)
		FUNC13(dev, entry->mask_pos, &entry->masked);
	mask = FUNC6(control);
	FUNC8(entry, mask, mask);

	FUNC5(&entry->list, &dev->msi_list);

	/* Configure MSI capability structure */
	ret = FUNC1(dev, nvec, PCI_CAP_ID_MSI);
	if (ret) {
		FUNC8(entry, mask, ~mask);
		FUNC2(dev);
		return ret;
	}

	ret = FUNC15(dev);
	if (ret) {
		FUNC8(entry, mask, ~mask);
		FUNC2(dev);
		return ret;
	}

	/* Set MSI enabled bits	 */
	FUNC12(dev, 0);
	FUNC10(dev, pos, 1);
	dev->msi_enabled = 1;

	dev->irq = entry->irq;
	return 0;
}