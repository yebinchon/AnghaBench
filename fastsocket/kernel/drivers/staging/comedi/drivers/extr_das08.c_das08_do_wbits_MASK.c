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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;
struct TYPE_2__ {int do_mux_bits; } ;

/* Variables and functions */
 scalar_t__ DAS08_CONTROL ; 
 int DAS08_DO_MASK ; 
 int FUNC0 (int) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s,
			  struct comedi_insn *insn, unsigned int *data)
{
	int wbits;

	/*  get current settings of digital output lines */
	wbits = (devpriv->do_mux_bits >> 4) & 0xf;
	/*  null bits we are going to set */
	wbits &= ~data[0];
	/*  set new bit values */
	wbits |= data[0] & data[1];
	/*  remember digital output bits */
	FUNC2(&dev->spinlock);	/*  prevent race with setting of analog input mux */
	devpriv->do_mux_bits &= ~DAS08_DO_MASK;
	devpriv->do_mux_bits |= FUNC0(wbits);
	FUNC1(devpriv->do_mux_bits, dev->iobase + DAS08_CONTROL);
	FUNC3(&dev->spinlock);

	data[1] = wbits;

	return 2;
}