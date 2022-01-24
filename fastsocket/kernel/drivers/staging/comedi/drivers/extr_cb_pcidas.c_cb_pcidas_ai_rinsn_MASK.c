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
struct comedi_insn {int chanspec; int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ adc_fifo; scalar_t__ control_status; } ;

/* Variables and functions */
 scalar_t__ ADCDATA ; 
 scalar_t__ ADCFIFOCLR ; 
 scalar_t__ ADCMUX_CONT ; 
 scalar_t__ AREF_DIFF ; 
 unsigned int FUNC0 (int) ; 
 scalar_t__ CALIBRATION_REG ; 
 int CR_ALT_SOURCE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 int EOC ; 
 int ETIMEDOUT ; 
 unsigned int FUNC5 (int) ; 
 int IS_UNIPOLAR ; 
 unsigned int SE ; 
 unsigned int UNIP ; 
 unsigned int FUNC6 (struct comedi_device*) ; 
 TYPE_1__* devpriv ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn, unsigned int *data)
{
	int n, i;
	unsigned int bits;
	static const int timeout = 10000;
	int channel;
	/*  enable calibration input if appropriate */
	if (insn->chanspec & CR_ALT_SOURCE) {
		FUNC8(FUNC6(dev),
		     devpriv->control_status + CALIBRATION_REG);
		channel = 0;
	} else {
		FUNC8(0, devpriv->control_status + CALIBRATION_REG);
		channel = FUNC2(insn->chanspec);
	}
	/*  set mux limits and gain */
	bits = FUNC0(channel) |
	    FUNC4(channel) | FUNC5(FUNC3(insn->chanspec));
	/*  set unipolar/bipolar */
	if (FUNC3(insn->chanspec) & IS_UNIPOLAR)
		bits |= UNIP;
	/*  set singleended/differential */
	if (FUNC1(insn->chanspec) != AREF_DIFF)
		bits |= SE;
	FUNC8(bits, devpriv->control_status + ADCMUX_CONT);

	/* clear fifo */
	FUNC8(0, devpriv->adc_fifo + ADCFIFOCLR);

	/* convert n samples */
	for (n = 0; n < insn->n; n++) {
		/* trigger conversion */
		FUNC8(0, devpriv->adc_fifo + ADCDATA);

		/* wait for conversion to end */
		/* return -ETIMEDOUT if there is a timeout */
		for (i = 0; i < timeout; i++) {
			if (FUNC7(devpriv->control_status + ADCMUX_CONT) & EOC)
				break;
		}
		if (i == timeout)
			return -ETIMEDOUT;

		/* read data */
		data[n] = FUNC7(devpriv->adc_fifo + ADCDATA);
	}

	/* return the number of samples read/written */
	return n;
}