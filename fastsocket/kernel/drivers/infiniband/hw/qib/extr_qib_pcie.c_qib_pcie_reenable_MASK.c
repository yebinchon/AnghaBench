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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct qib_devdata {int /*<<< orphan*/  pcidev; int /*<<< orphan*/  pcibar1; int /*<<< orphan*/  pcibar0; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BASE_ADDRESS_0 ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_1 ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  PCI_INTERRUPT_LINE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,char*,int) ; 

void FUNC5(struct qib_devdata *dd, u16 cmd, u8 iline, u8 cline)
{
	int r;
	r = FUNC2(dd->pcidev, PCI_BASE_ADDRESS_0,
				   dd->pcibar0);
	if (r)
		FUNC4(dd, "rewrite of BAR0 failed: %d\n", r);
	r = FUNC2(dd->pcidev, PCI_BASE_ADDRESS_1,
				   dd->pcibar1);
	if (r)
		FUNC4(dd, "rewrite of BAR1 failed: %d\n", r);
	/* now re-enable memory access, and restore cosmetic settings */
	FUNC3(dd->pcidev, PCI_COMMAND, cmd);
	FUNC1(dd->pcidev, PCI_INTERRUPT_LINE, iline);
	FUNC1(dd->pcidev, PCI_CACHE_LINE_SIZE, cline);
	r = FUNC0(dd->pcidev);
	if (r)
		FUNC4(dd,
			"pci_enable_device failed after reset: %d\n", r);
}