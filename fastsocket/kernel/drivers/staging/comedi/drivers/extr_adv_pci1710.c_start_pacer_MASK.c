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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ PCI171x_CNT1 ; 
 scalar_t__ PCI171x_CNT2 ; 
 scalar_t__ PCI171x_CNTCTRL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev, int mode,
			unsigned int divisor1, unsigned int divisor2)
{
	FUNC0("adv_pci1710 EDBG: BGN: start_pacer(%d,%u,%u)\n", mode,
		divisor1, divisor2);
	FUNC1(0xb4, dev->iobase + PCI171x_CNTCTRL);
	FUNC1(0x74, dev->iobase + PCI171x_CNTCTRL);

	if (mode == 1) {
		FUNC1(divisor2 & 0xff, dev->iobase + PCI171x_CNT2);
		FUNC1((divisor2 >> 8) & 0xff, dev->iobase + PCI171x_CNT2);
		FUNC1(divisor1 & 0xff, dev->iobase + PCI171x_CNT1);
		FUNC1((divisor1 >> 8) & 0xff, dev->iobase + PCI171x_CNT1);
	}
	FUNC0("adv_pci1710 EDBG: END: start_pacer(...)\n");
}