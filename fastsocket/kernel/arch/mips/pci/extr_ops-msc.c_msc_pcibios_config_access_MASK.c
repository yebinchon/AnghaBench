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
typedef  int u32 ;
struct pci_bus {unsigned char number; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSC01_PCI_CFGADDR ; 
 unsigned char MSC01_PCI_CFGADDR_BNUM_SHF ; 
 unsigned char MSC01_PCI_CFGADDR_DNUM_SHF ; 
 unsigned char MSC01_PCI_CFGADDR_FNUM_SHF ; 
 int MSC01_PCI_CFGADDR_RNUM_SHF ; 
 int /*<<< orphan*/  MSC01_PCI_CFGDATA ; 
 int MSC01_PCI_INTCFG_MA_BIT ; 
 int MSC01_PCI_INTCFG_TA_BIT ; 
 int /*<<< orphan*/  MSC01_PCI_INTSTAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned char PCI_ACCESS_WRITE ; 
 unsigned char FUNC2 (unsigned int) ; 
 unsigned char FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(unsigned char access_type,
	struct pci_bus *bus, unsigned int devfn, int where, u32 * data)
{
	unsigned char busnum = bus->number;
	u32 intr;

	/* Clear status register bits. */
	FUNC1(MSC01_PCI_INTSTAT,
		  (MSC01_PCI_INTCFG_MA_BIT | MSC01_PCI_INTCFG_TA_BIT));

	FUNC1(MSC01_PCI_CFGADDR,
		  ((busnum << MSC01_PCI_CFGADDR_BNUM_SHF) |
		   (FUNC3(devfn) << MSC01_PCI_CFGADDR_DNUM_SHF) |
		   (FUNC2(devfn) << MSC01_PCI_CFGADDR_FNUM_SHF) |
		   ((where / 4) << MSC01_PCI_CFGADDR_RNUM_SHF)));

	/* Perform access */
	if (access_type == PCI_ACCESS_WRITE)
		FUNC1(MSC01_PCI_CFGDATA, *data);
	else
		FUNC0(MSC01_PCI_CFGDATA, *data);

	/* Detect Master/Target abort */
	FUNC0(MSC01_PCI_INTSTAT, intr);
	if (intr & (MSC01_PCI_INTCFG_MA_BIT | MSC01_PCI_INTCFG_TA_BIT)) {
		/* Error occurred */

		/* Clear bits */
		FUNC1(MSC01_PCI_INTSTAT,
			  (MSC01_PCI_INTCFG_MA_BIT | MSC01_PCI_INTCFG_TA_BIT));

		return -1;
	}

	return 0;
}