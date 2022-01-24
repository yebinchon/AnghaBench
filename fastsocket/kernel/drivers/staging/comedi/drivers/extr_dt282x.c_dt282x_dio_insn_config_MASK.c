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
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int /*<<< orphan*/  dacsr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DT2821_DACSR ; 
 int /*<<< orphan*/  DT2821_HBOE ; 
 int /*<<< orphan*/  DT2821_LBOE ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn, unsigned int *data)
{
	int mask;

	mask = (FUNC0(insn->chanspec) < 8) ? 0x00ff : 0xff00;
	if (data[0])
		s->io_bits |= mask;
	else
		s->io_bits &= ~mask;

	if (s->io_bits & 0x00ff)
		devpriv->dacsr |= DT2821_LBOE;
	else
		devpriv->dacsr &= ~DT2821_LBOE;
	if (s->io_bits & 0xff00)
		devpriv->dacsr |= DT2821_HBOE;
	else
		devpriv->dacsr &= ~DT2821_HBOE;

	FUNC1(devpriv->dacsr, dev->iobase + DT2821_DACSR);

	return 1;
}