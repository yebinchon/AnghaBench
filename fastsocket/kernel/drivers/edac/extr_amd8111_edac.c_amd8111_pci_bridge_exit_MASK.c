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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct amd8111_pci_info {struct pci_dev* dev; } ;

/* Variables and functions */
 scalar_t__ EDAC_OPSTATE_POLL ; 
 int /*<<< orphan*/  HT_LINK_CRCFEN ; 
 int /*<<< orphan*/  PCI_INTBRG_CTRL_POLL_MASK ; 
 int /*<<< orphan*/  PCI_STSCMD_SERREN ; 
 int /*<<< orphan*/  REG_HT_LINK ; 
 int /*<<< orphan*/  REG_PCI_INTBRG_CTRL ; 
 int /*<<< orphan*/  REG_PCI_STSCMD ; 
 scalar_t__ edac_op_state ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct amd8111_pci_info *pci_info)
{
	u32 val32;
	struct pci_dev *dev = pci_info->dev;

	if (edac_op_state == EDAC_OPSTATE_POLL) {
		/* Disable System Error reporting */
		FUNC0(dev, REG_PCI_STSCMD, &val32);
		val32 &= ~PCI_STSCMD_SERREN;
		FUNC1(dev, REG_PCI_STSCMD, val32);

		/* Disable CRC flood packets */
		FUNC0(dev, REG_HT_LINK, &val32);
		val32 &= ~HT_LINK_CRCFEN;
		FUNC1(dev, REG_HT_LINK, val32);

		/* Disable DTSERREN/MARSP/SERREN in Interrupt Control reg */
		FUNC0(dev, REG_PCI_INTBRG_CTRL, &val32);
		val32 &= ~PCI_INTBRG_CTRL_POLL_MASK;
		FUNC1(dev, REG_PCI_INTBRG_CTRL, val32);
	}
}