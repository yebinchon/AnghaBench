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
 scalar_t__ PCI9118_CNT1 ; 
 scalar_t__ PCI9118_CNT2 ; 
 scalar_t__ PCI9118_CNTCTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev, int mode,
			unsigned int divisor1, unsigned int divisor2)
{
	FUNC0(0x74, dev->iobase + PCI9118_CNTCTRL);
	FUNC0(0xb4, dev->iobase + PCI9118_CNTCTRL);
/* outl(0x30, dev->iobase + PCI9118_CNTCTRL); */
	FUNC1(1);

	if ((mode == 1) || (mode == 2) || (mode == 4)) {
		FUNC0(divisor2 & 0xff, dev->iobase + PCI9118_CNT2);
		FUNC0((divisor2 >> 8) & 0xff, dev->iobase + PCI9118_CNT2);
		FUNC0(divisor1 & 0xff, dev->iobase + PCI9118_CNT1);
		FUNC0((divisor1 >> 8) & 0xff, dev->iobase + PCI9118_CNT1);
	}
}