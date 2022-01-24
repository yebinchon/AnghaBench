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
struct comedi_subdevice {int n_chan; } ;
struct comedi_insn {unsigned int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {scalar_t__ hwver; int adcg; unsigned short adccon; scalar_t__ iobase1; scalar_t__ ai_bipolar; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  I8254_MODE0 ; 
 int /*<<< orphan*/  I8254_MODE1 ; 
 scalar_t__ PCI230_ADCCON ; 
 scalar_t__ PCI230_ADCEN ; 
 scalar_t__ PCI230_ADCG ; 
 unsigned int PCI230_ADC_FIFO_EMPTY ; 
 unsigned short PCI230_ADC_FIFO_EN ; 
 unsigned short PCI230_ADC_FIFO_RESET ; 
 unsigned short PCI230_ADC_IM_DIF ; 
 unsigned short PCI230_ADC_IM_SE ; 
 unsigned short PCI230_ADC_IR_BIP ; 
 unsigned short PCI230_ADC_IR_UNI ; 
 unsigned short PCI230_ADC_TRIG_Z2CT2 ; 
 scalar_t__ PCI230_Z2_CT_BASE ; 
 unsigned int TIMEOUT ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned short,scalar_t__) ; 
 scalar_t__* pci230_ai_bipolar ; 
 unsigned int* pci230_ai_gain ; 
 unsigned int FUNC7 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_insn *insn,
			   unsigned int *data)
{
	unsigned int n, i;
	unsigned int chan, range, aref;
	unsigned int gainshift;
	unsigned int status;
	unsigned short adccon, adcen;

	/* Unpack channel and range. */
	chan = FUNC1(insn->chanspec);
	range = FUNC2(insn->chanspec);
	aref = FUNC0(insn->chanspec);
	if (aref == AREF_DIFF) {
		/* Differential. */
		if (chan >= s->n_chan / 2) {
			FUNC3("comedi%d: amplc_pci230: ai_rinsn: "
				"differential channel number out of range "
				"0 to %u\n", dev->minor, (s->n_chan / 2) - 1);
			return -EINVAL;
		}
	}

	/* Use Z2-CT2 as a conversion trigger instead of the built-in
	 * software trigger, as otherwise triggering of differential channels
	 * doesn't work properly for some versions of PCI230/260.  Also set
	 * FIFO mode because the ADC busy bit only works for software triggers.
	 */
	adccon = PCI230_ADC_TRIG_Z2CT2 | PCI230_ADC_FIFO_EN;
	/* Set Z2-CT2 output low to avoid any false triggers. */
	FUNC4(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, 2, I8254_MODE0);
	devpriv->ai_bipolar = pci230_ai_bipolar[range];
	if (aref == AREF_DIFF) {
		/* Differential. */
		gainshift = chan * 2;
		if (devpriv->hwver == 0) {
			/* Original PCI230/260 expects both inputs of the
			 * differential channel to be enabled. */
			adcen = 3 << gainshift;
		} else {
			/* PCI230+/260+ expects only one input of the
			 * differential channel to be enabled. */
			adcen = 1 << gainshift;
		}
		adccon |= PCI230_ADC_IM_DIF;
	} else {
		/* Single ended. */
		adcen = 1 << chan;
		gainshift = chan & ~1;
		adccon |= PCI230_ADC_IM_SE;
	}
	devpriv->adcg = (devpriv->adcg & ~(3 << gainshift))
	    | (pci230_ai_gain[range] << gainshift);
	if (devpriv->ai_bipolar) {
		adccon |= PCI230_ADC_IR_BIP;
	} else {
		adccon |= PCI230_ADC_IR_UNI;
	}

	/* Enable only this channel in the scan list - otherwise by default
	 * we'll get one sample from each channel. */
	FUNC6(adcen, dev->iobase + PCI230_ADCEN);

	/* Set gain for channel. */
	FUNC6(devpriv->adcg, dev->iobase + PCI230_ADCG);

	/* Specify uni/bip, se/diff, conversion source, and reset FIFO. */
	devpriv->adccon = adccon;
	FUNC6(adccon | PCI230_ADC_FIFO_RESET, dev->iobase + PCI230_ADCCON);

	/* Convert n samples */
	for (n = 0; n < insn->n; n++) {
		/* Trigger conversion by toggling Z2-CT2 output (finish with
		 * output high). */
		FUNC4(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, 2,
			       I8254_MODE0);
		FUNC4(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, 2,
			       I8254_MODE1);

#define TIMEOUT 100
		/* wait for conversion to end */
		for (i = 0; i < TIMEOUT; i++) {
			status = FUNC5(dev->iobase + PCI230_ADCCON);
			if (!(status & PCI230_ADC_FIFO_EMPTY))
				break;
			FUNC9(1);
		}
		if (i == TIMEOUT) {
			/* printk() should be used instead of printk()
			 * whenever the code can be called from real-time. */
			FUNC8("timeout\n");
			return -ETIMEDOUT;
		}

		/* read data */
		data[n] = FUNC7(dev);
	}

	/* return the number of samples read/written */
	return n;
}