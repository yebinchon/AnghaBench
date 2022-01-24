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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int last_channel; int last_range; } ;

/* Variables and functions */
 scalar_t__ ADQ12B_ADHIG ; 
 scalar_t__ ADQ12B_ADLOW ; 
 scalar_t__ ADQ12B_CTREG ; 
 unsigned char ADQ12B_EOC ; 
 scalar_t__ ADQ12B_STINR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TIMEOUT ; 
 TYPE_1__* devpriv ; 
 unsigned char FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_insn *insn,
			   unsigned int *data)
{
	int n, i;
	int range, channel;
	unsigned char hi, lo, status;

	/* change channel and range only if it is different from the previous */
	range = FUNC1(insn->chanspec);
	channel = FUNC0(insn->chanspec);
	if (channel != devpriv->last_channel || range != devpriv->last_range) {
		FUNC3((range << 4) | channel, dev->iobase + ADQ12B_CTREG);
		FUNC4(50);	/* wait for the mux to settle */
	}

	/* trigger conversion */
	status = FUNC2(dev->iobase + ADQ12B_ADLOW);

	/* convert n samples */
	for (n = 0; n < insn->n; n++) {

		/* wait for end of convertion */
		i = 0;
		do {
/* udelay(1); */
			status = FUNC2(dev->iobase + ADQ12B_STINR);
			status = status & ADQ12B_EOC;
		} while (status == 0 && ++i < TIMEOUT);
/* } while (++i < 10); */

		/* read data */
		hi = FUNC2(dev->iobase + ADQ12B_ADHIG);
		lo = FUNC2(dev->iobase + ADQ12B_ADLOW);

		/* printk("debug: chan=%d range=%d status=%d hi=%d lo=%d\n", channel, range, status,  hi, lo); */
		data[n] = (hi << 8) | lo;

	}

	/* return the number of samples read/written */
	return n;
}