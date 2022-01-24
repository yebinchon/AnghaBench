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
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  board_name; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {int mode_reg_int; } ;

/* Variables and functions */
 int ETIME ; 
 scalar_t__ PCL812_AD_HI ; 
 scalar_t__ PCL812_AD_LO ; 
 int PCL812_DRDY ; 
 scalar_t__ PCL812_MODE ; 
 scalar_t__ PCL812_SOFTTRIG ; 
 TYPE_1__* devpriv ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int n;
	int timeout, hi;

	FUNC1(devpriv->mode_reg_int | 1, dev->iobase + PCL812_MODE);	/* select software trigger */
	FUNC3(dev, s, insn->chanspec, 1);	/*  select channel and renge */
	for (n = 0; n < insn->n; n++) {
		FUNC1(255, dev->iobase + PCL812_SOFTTRIG);	/* start conversion */
		FUNC4(5);
		timeout = 50;	/* wait max 50us, it must finish under 33us */
		while (timeout--) {
			hi = FUNC0(dev->iobase + PCL812_AD_HI);
			if (!(hi & PCL812_DRDY))
				goto conv_finish;
			FUNC4(1);
		}
		FUNC2
		    ("comedi%d: pcl812: (%s at 0x%lx) A/D insn read timeout\n",
		     dev->minor, dev->board_name, dev->iobase);
		FUNC1(devpriv->mode_reg_int | 0, dev->iobase + PCL812_MODE);
		return -ETIME;

conv_finish:
		data[n] = ((hi & 0xf) << 8) | FUNC0(dev->iobase + PCL812_AD_LO);
	}
	FUNC1(devpriv->mode_reg_int | 0, dev->iobase + PCL812_MODE);
	return n;
}