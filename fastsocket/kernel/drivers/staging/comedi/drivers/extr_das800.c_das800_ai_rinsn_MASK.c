#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  spinlock; } ;
struct TYPE_4__ {int do_bits; } ;
struct TYPE_3__ {int resolution; } ;

/* Variables and functions */
 int BUSY ; 
 int CONTROL1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS800_CONTROL1 ; 
 scalar_t__ DAS800_GAIN ; 
 scalar_t__ DAS800_LSB ; 
 scalar_t__ DAS800_MSB ; 
 scalar_t__ DAS800_STATUS ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* thisboard ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_insn *insn,
			   unsigned int *data)
{
	int i, n;
	int chan;
	int range;
	int lsb, msb;
	int timeout = 1000;
	unsigned long irq_flags;

	FUNC3(dev);	/* disable hardware conversions (enables software conversions) */

	/* set multiplexer */
	chan = FUNC0(insn->chanspec);

	FUNC7(&dev->spinlock, irq_flags);
	FUNC5(CONTROL1, dev->iobase + DAS800_GAIN);	/* select dev->iobase + 2 to be control register 1 */
	FUNC5(chan | devpriv->do_bits, dev->iobase + DAS800_CONTROL1);
	FUNC8(&dev->spinlock, irq_flags);

	/* set gain / range */
	range = FUNC1(insn->chanspec);
	if (thisboard->resolution == 12 && range)
		range += 0x7;
	range &= 0xf;
	FUNC5(range, dev->iobase + DAS800_GAIN);

	FUNC9(5);

	for (n = 0; n < insn->n; n++) {
		/* trigger conversion */
		FUNC6(0, dev->iobase + DAS800_MSB);

		for (i = 0; i < timeout; i++) {
			if (!(FUNC4(dev->iobase + DAS800_STATUS) & BUSY))
				break;
		}
		if (i == timeout) {
			FUNC2(dev, "timeout");
			return -ETIME;
		}
		lsb = FUNC4(dev->iobase + DAS800_LSB);
		msb = FUNC4(dev->iobase + DAS800_MSB);
		if (thisboard->resolution == 12) {
			data[n] = (lsb >> 4) & 0xff;
			data[n] |= (msb << 4);
		} else {
			data[n] = (msb << 8) | lsb;
		}
	}

	return n;
}