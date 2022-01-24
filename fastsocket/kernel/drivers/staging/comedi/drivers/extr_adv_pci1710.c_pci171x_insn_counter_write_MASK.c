#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ cnt0_write_wait; } ;

/* Variables and functions */
 scalar_t__ PCI171x_CNT0 ; 
 scalar_t__ PCI171x_CNTCTRL ; 
 TYPE_1__* devpriv ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				      struct comedi_subdevice *s,
				      struct comedi_insn *insn,
				      unsigned int *data)
{
	uint msb, lsb, ccntrl, status;

	lsb = data[0] & 0x00FF;
	msb = (data[0] & 0xFF00) >> 8;

	/* write lsb, then msb */
	FUNC1(lsb, dev->iobase + PCI171x_CNT0);
	FUNC1(msb, dev->iobase + PCI171x_CNT0);

	if (devpriv->cnt0_write_wait) {
		/* wait for the new count to be loaded */
		ccntrl = 0xE2;
		do {
			FUNC1(ccntrl, dev->iobase + PCI171x_CNTCTRL);
			status = FUNC0(dev->iobase + PCI171x_CNT0) & 0xFF;
		} while (status & 0x40);
	}

	return insn->n;
}