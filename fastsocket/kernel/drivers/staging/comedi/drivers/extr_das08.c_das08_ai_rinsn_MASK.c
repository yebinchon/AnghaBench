#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {TYPE_1__* range_table; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  spinlock; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pg_gainlist; int /*<<< orphan*/  do_mux_bits; } ;
struct TYPE_5__ {int ai_nbits; scalar_t__ ai_encoding; } ;
struct TYPE_4__ {int length; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS08AO_GAIN_CONTROL ; 
 scalar_t__ DAS08_CONTROL ; 
 int DAS08_EOC ; 
 scalar_t__ DAS08_LSB ; 
 scalar_t__ DAS08_MSB ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DAS08_MUX_MASK ; 
 scalar_t__ DAS08_STATUS ; 
 scalar_t__ DAS08_TRIG_12BIT ; 
 int ETIME ; 
 int TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,char*) ; 
 scalar_t__ das08_encode12 ; 
 scalar_t__ das08_encode16 ; 
 scalar_t__ das08_pcm_encode12 ; 
 TYPE_3__* devpriv ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* thisboard ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev, struct comedi_subdevice *s,
			  struct comedi_insn *insn, unsigned int *data)
{
	int i, n;
	int chan;
	int range;
	int lsb, msb;

	chan = FUNC0(insn->chanspec);
	range = FUNC1(insn->chanspec);

	/* clear crap */
	FUNC4(dev->iobase + DAS08_LSB);
	FUNC4(dev->iobase + DAS08_MSB);

	/* set multiplexer */
	FUNC8(&dev->spinlock);	/*  lock to prevent race with digital output */
	devpriv->do_mux_bits &= ~DAS08_MUX_MASK;
	devpriv->do_mux_bits |= FUNC2(chan);
	FUNC5(devpriv->do_mux_bits, dev->iobase + DAS08_CONTROL);
	FUNC9(&dev->spinlock);

	if (s->range_table->length > 1) {
		/* set gain/range */
		range = FUNC1(insn->chanspec);
		FUNC5(devpriv->pg_gainlist[range],
		     dev->iobase + DAS08AO_GAIN_CONTROL);
	}

	for (n = 0; n < insn->n; n++) {
		/* clear over-range bits for 16-bit boards */
		if (thisboard->ai_nbits == 16)
			if (FUNC4(dev->iobase + DAS08_MSB) & 0x80)
				FUNC7("das08: over-range\n");

		/* trigger conversion */
		FUNC6(0, dev->iobase + DAS08_TRIG_12BIT);

		for (i = 0; i < TIMEOUT; i++) {
			if (!(FUNC4(dev->iobase + DAS08_STATUS) & DAS08_EOC))
				break;
		}
		if (i == TIMEOUT) {
			FUNC7("das08: timeout\n");
			return -ETIME;
		}
		msb = FUNC4(dev->iobase + DAS08_MSB);
		lsb = FUNC4(dev->iobase + DAS08_LSB);
		if (thisboard->ai_encoding == das08_encode12) {
			data[n] = (lsb >> 4) | (msb << 4);
		} else if (thisboard->ai_encoding == das08_pcm_encode12) {
			data[n] = (msb << 8) + lsb;
		} else if (thisboard->ai_encoding == das08_encode16) {
			/* FPOS 16-bit boards are sign-magnitude */
			if (msb & 0x80)
				data[n] = (1 << 15) | lsb | ((msb & 0x7f) << 8);
			else
				data[n] = (1 << 15) - (lsb | (msb & 0x7f) << 8);
		} else {
			FUNC3(dev, "bug! unknown ai encoding");
			return -1;
		}
	}

	return n;
}