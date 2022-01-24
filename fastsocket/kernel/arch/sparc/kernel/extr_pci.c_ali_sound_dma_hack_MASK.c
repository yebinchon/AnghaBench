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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DEVICE_ID_AL_M1533 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_AL ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev, int set_bit)
{
	struct pci_dev *ali_isa_bridge;
	u8 val;

	/* ALI sound chips generate 31-bits of DMA, a special register
	 * determines what bit 31 is emitted as.
	 */
	ali_isa_bridge = FUNC1(PCI_VENDOR_ID_AL,
					 PCI_DEVICE_ID_AL_M1533,
					 NULL);

	FUNC2(ali_isa_bridge, 0x7e, &val);
	if (set_bit)
		val |= 0x01;
	else
		val &= ~0x01;
	FUNC3(ali_isa_bridge, 0x7e, val);
	FUNC0(ali_isa_bridge);
}