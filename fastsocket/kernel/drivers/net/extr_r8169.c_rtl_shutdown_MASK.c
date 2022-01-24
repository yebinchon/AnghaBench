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
struct rtl8169_private {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct net_device {int /*<<< orphan*/  perm_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ SYSTEM_POWER_OFF ; 
 int WAKE_ANY ; 
 int FUNC0 (struct rtl8169_private*) ; 
 struct rtl8169_private* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*) ; 
 scalar_t__ system_state ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC2(pdev);
	struct rtl8169_private *tp = FUNC1(dev);
	struct device *d = &pdev->dev;

	FUNC5(d);

	FUNC8(dev);

	/* Restore original MAC address */
	FUNC9(tp, dev->perm_addr);

	FUNC7(tp);

	if (system_state == SYSTEM_POWER_OFF) {
		if (FUNC0(tp) & WAKE_ANY) {
			FUNC11(tp);
			FUNC10(tp);
		}

		FUNC4(pdev, true);
		FUNC3(pdev, PCI_D3hot);
	}

	FUNC6(d);
}