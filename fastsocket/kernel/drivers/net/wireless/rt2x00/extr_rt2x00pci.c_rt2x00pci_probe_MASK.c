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
struct rt2x00_ops {int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  rt; } ;
struct rt2x00_dev {TYPE_1__ chip; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; struct ieee80211_hw* hw; struct rt2x00_ops const* ops; int /*<<< orphan*/ * dev; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 int /*<<< orphan*/  RT2X00_CHIP_INTF_PCI ; 
 int /*<<< orphan*/  RT2X00_CHIP_INTF_PCIE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 scalar_t__ FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct rt2x00_dev*) ; 
 int FUNC17 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct rt2x00_dev*) ; 

int FUNC19(struct pci_dev *pci_dev, const struct rt2x00_ops *ops)
{
	struct ieee80211_hw *hw;
	struct rt2x00_dev *rt2x00dev;
	int retval;
	u16 chip;

	retval = FUNC5(pci_dev);
	if (retval) {
		FUNC14("Enable device failed\n");
		return retval;
	}

	retval = FUNC10(pci_dev, FUNC7(pci_dev));
	if (retval) {
		FUNC14("PCI request regions failed\n");
		goto exit_disable_device;
	}

	FUNC12(pci_dev);

	if (FUNC13(pci_dev))
		FUNC14("MWI not available\n");

	if (FUNC1(&pci_dev->dev, FUNC0(32))) {
		FUNC14("PCI DMA not supported\n");
		retval = -EIO;
		goto exit_release_regions;
	}

	hw = FUNC2(sizeof(struct rt2x00_dev), ops->hw);
	if (!hw) {
		FUNC14("Failed to allocate hardware\n");
		retval = -ENOMEM;
		goto exit_release_regions;
	}

	FUNC11(pci_dev, hw);

	rt2x00dev = hw->priv;
	rt2x00dev->dev = &pci_dev->dev;
	rt2x00dev->ops = ops;
	rt2x00dev->hw = hw;
	rt2x00dev->irq = pci_dev->irq;
	rt2x00dev->name = FUNC7(pci_dev);

	if (FUNC6(pci_dev))
		FUNC15(rt2x00dev, RT2X00_CHIP_INTF_PCIE);
	else
		FUNC15(rt2x00dev, RT2X00_CHIP_INTF_PCI);

	retval = FUNC17(rt2x00dev);
	if (retval)
		goto exit_free_device;

	/*
	 * Because rt3290 chip use different efuse offset to read efuse data.
	 * So before read efuse it need to indicate it is the
	 * rt3290 or not.
	 */
	FUNC8(pci_dev, PCI_DEVICE_ID, &chip);
	rt2x00dev->chip.rt = chip;

	retval = FUNC16(rt2x00dev);
	if (retval)
		goto exit_free_reg;

	return 0;

exit_free_reg:
	FUNC18(rt2x00dev);

exit_free_device:
	FUNC3(hw);

exit_release_regions:
	FUNC9(pci_dev);

exit_disable_device:
	FUNC4(pci_dev);

	FUNC11(pci_dev, NULL);

	return retval;
}