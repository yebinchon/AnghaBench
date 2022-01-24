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
struct rt2x00_dev {int dummy; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct ieee80211_hw* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*) ; 

void FUNC7(struct pci_dev *pci_dev)
{
	struct ieee80211_hw *hw = FUNC2(pci_dev);
	struct rt2x00_dev *rt2x00dev = hw->priv;

	/*
	 * Free all allocated data.
	 */
	FUNC5(rt2x00dev);
	FUNC6(rt2x00dev);
	FUNC0(hw);

	/*
	 * Free the PCI device data.
	 */
	FUNC4(pci_dev, NULL);
	FUNC1(pci_dev);
	FUNC3(pci_dev);
}