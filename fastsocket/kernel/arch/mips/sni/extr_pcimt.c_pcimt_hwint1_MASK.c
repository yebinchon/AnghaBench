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

/* Variables and functions */
 int IT_EISA ; 
 int IT_SCSI ; 
 scalar_t__ PCIMT_CSITPEND ; 
 int PCIMT_IRQ_SCSI ; 
 int /*<<< orphan*/  ST0_IM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 unsigned long FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(void)
{
	u8 pend = *(volatile char *)PCIMT_CSITPEND;
	unsigned long flags;

	if (pend & IT_EISA) {
		int irq;
		/*
		 * Note: ASIC PCI's builtin interrupt acknowledge feature is
		 * broken.  Using it may result in loss of some or all i8259
		 * interrupts, so don't use PCIMT_INT_ACKNOWLEDGE ...
		 */
		irq = FUNC2();
		if (FUNC4(irq < 0))
			return;

		FUNC1(irq);
	}

	if (!(pend & IT_SCSI)) {
		flags = FUNC3();
		FUNC0(ST0_IM);
		FUNC1(PCIMT_IRQ_SCSI);
		FUNC5(flags);
	}
}