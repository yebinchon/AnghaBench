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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ASYN_INT_MODE ; 
 int BAD_VCC_REQ_DISB ; 
 int /*<<< orphan*/  BRGCNT ; 
 int /*<<< orphan*/  CHIPCNT ; 
 int CH_ASSIGN_MASK ; 
 int CH_ASSIGN_NODMA ; 
 int /*<<< orphan*/  DEVCNT ; 
 int IFG ; 
 int /*<<< orphan*/  IREQ_INT ; 
 int IRQ_MODE ; 
 int PCI_CLK_RIN ; 
 int PCI_INT_MODE ; 
 int PCPCI_EN ; 
 int /*<<< orphan*/  SERRDIS ; 
 int SR_PCI_INT_SEL_MASK ; 
 int SR_PCI_INT_SEL_NONE ; 
 int SUB_ID_WR_EN ; 
 int SYSCNT ; 
 int S_PREF_DISB ; 
 int ZOOM_VIDEO_EN ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev)
{
	u32 syscnt;
	u16 brgcnt;
	u8 devcnt;

	FUNC4(dev, 0x1c, 0x10000000);
	FUNC4(dev, 0x20, 0x17fff000);
	FUNC4(dev, 0x2c, 0);
	FUNC4(dev, 0x30, 0xfffc);

	FUNC2(dev, BRGCNT, &brgcnt);
	brgcnt &= ~IREQ_INT;
	FUNC5(dev, BRGCNT, brgcnt);

	FUNC1(dev, SYSCNT, &syscnt);
	syscnt &= ~(BAD_VCC_REQ_DISB|PCPCI_EN|CH_ASSIGN_MASK|SUB_ID_WR_EN|PCI_CLK_RIN);
	syscnt |= (CH_ASSIGN_NODMA|ASYN_INT_MODE);
	FUNC4(dev, SYSCNT, syscnt);

	FUNC0(dev, DEVCNT, &devcnt);
	devcnt &= ~(ZOOM_VIDEO_EN|SR_PCI_INT_SEL_MASK|PCI_INT_MODE|IRQ_MODE);
	devcnt |= (SR_PCI_INT_SEL_NONE|IFG);
	FUNC3(dev, DEVCNT, devcnt);

	FUNC3(dev, CHIPCNT, S_PREF_DISB);

	FUNC3(dev, SERRDIS, 0);
}