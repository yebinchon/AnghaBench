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
struct TYPE_2__ {unsigned int muxgain_bits; scalar_t__ adc_coding; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ETIME ; 
 scalar_t__ RTI800_ADCHI ; 
 scalar_t__ RTI800_ADCLO ; 
 scalar_t__ RTI800_CLRFLAGS ; 
 scalar_t__ RTI800_CONVERT ; 
 scalar_t__ RTI800_CSR ; 
 int RTI800_DONE ; 
 scalar_t__ RTI800_MUXGAIN ; 
 int RTI800_OVERRUN ; 
 int RTI800_TIMEOUT ; 
 scalar_t__ adc_2comp ; 
 TYPE_1__* devpriv ; 
 int* gaindelay ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int i, t;
	int status;
	int chan = FUNC2(insn->chanspec);
	unsigned gain = FUNC3(insn->chanspec);
	unsigned muxgain_bits;

	FUNC4(dev->iobase + RTI800_ADCHI);
	FUNC5(0, dev->iobase + RTI800_CLRFLAGS);

	muxgain_bits = chan | (gain << 5);
	if (muxgain_bits != devpriv->muxgain_bits) {
		devpriv->muxgain_bits = muxgain_bits;
		FUNC5(devpriv->muxgain_bits, dev->iobase + RTI800_MUXGAIN);
		/* without a delay here, the RTI_OVERRUN bit
		 * gets set, and you will have an error. */
		if (insn->n > 0) {
			FUNC1(gain >= FUNC0(gaindelay));
			FUNC7(gaindelay[gain]);
		}
	}

	for (i = 0; i < insn->n; i++) {
		FUNC5(0, dev->iobase + RTI800_CONVERT);
		for (t = RTI800_TIMEOUT; t; t--) {
			status = FUNC4(dev->iobase + RTI800_CSR);
			if (status & RTI800_OVERRUN) {
				FUNC6("rti800: a/d overrun\n");
				FUNC5(0, dev->iobase + RTI800_CLRFLAGS);
				return -EIO;
			}
			if (status & RTI800_DONE)
				break;
			FUNC7(1);
		}
		if (t == 0) {
			FUNC6("rti800: timeout\n");
			return -ETIME;
		}
		data[i] = FUNC4(dev->iobase + RTI800_ADCLO);
		data[i] |= (0xf & FUNC4(dev->iobase + RTI800_ADCHI)) << 8;

		if (devpriv->adc_coding == adc_2comp) {
			data[i] ^= 0x800;
		}
	}

	return i;
}