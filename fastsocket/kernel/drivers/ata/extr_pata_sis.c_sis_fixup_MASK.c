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
typedef  int u16 ;
struct sis_chipset {int /*<<< orphan*/ * info; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PCI_CLASS_PROG ; 
 int PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  sis_info ; 
 int /*<<< orphan*/  sis_info100 ; 
 int /*<<< orphan*/  sis_info100_early ; 
 int /*<<< orphan*/  sis_info133 ; 
 int /*<<< orphan*/  sis_info133_early ; 
 int /*<<< orphan*/  sis_info33 ; 
 int /*<<< orphan*/  sis_info66 ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev, struct sis_chipset *sis)
{
	u16 regw;
	u8 reg;

	if (sis->info == &sis_info133) {
		FUNC2(pdev, 0x50, &regw);
		if (regw & 0x08)
			FUNC4(pdev, 0x50, regw & ~0x08);
		FUNC2(pdev, 0x52, &regw);
		if (regw & 0x08)
			FUNC4(pdev, 0x52, regw & ~0x08);
		return;
	}

	if (sis->info == &sis_info133_early || sis->info == &sis_info100) {
		/* Fix up latency */
		FUNC3(pdev, PCI_LATENCY_TIMER, 0x80);
		/* Set compatibility bit */
		FUNC1(pdev, 0x49, &reg);
		if (!(reg & 0x01))
			FUNC3(pdev, 0x49, reg | 0x01);
		return;
	}

	if (sis->info == &sis_info66 || sis->info == &sis_info100_early) {
		/* Fix up latency */
		FUNC3(pdev, PCI_LATENCY_TIMER, 0x80);
		/* Set compatibility bit */
		FUNC1(pdev, 0x52, &reg);
		if (!(reg & 0x04))
			FUNC3(pdev, 0x52, reg | 0x04);
		return;
	}

	if (sis->info == &sis_info33) {
		FUNC1(pdev, PCI_CLASS_PROG, &reg);
		if (( reg & 0x0F ) != 0x00)
			FUNC3(pdev, PCI_CLASS_PROG, reg & 0xF0);
		/* Fall through to ATA16 fixup below */
	}

	if (sis->info == &sis_info || sis->info == &sis_info33) {
		/* force per drive recovery and active timings
		   needed on ATA_33 and below chips */
		FUNC1(pdev, 0x52, &reg);
		if (!(reg & 0x08))
			FUNC3(pdev, 0x52, reg|0x08);
		return;
	}

	FUNC0();
}