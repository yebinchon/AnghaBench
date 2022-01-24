#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 int ADC_MODE_NORMAL ; 
 scalar_t__ AIO12_8_ADC ; 
 scalar_t__ AIO12_8_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int STATUS_ADC_EOC ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,char*) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int n;
	unsigned char control =
	    ADC_MODE_NORMAL |
	    (FUNC1(insn->chanspec) << 3) | FUNC0(insn->chanspec);

	/* read status to clear EOC latch */
	FUNC3(dev->iobase + AIO12_8_STATUS);

	for (n = 0; n < insn->n; n++) {
		int timeout = 5;

		/*  Setup and start conversion */
		FUNC5(control, dev->iobase + AIO12_8_ADC);

		/*  Wait for conversion to complete */
		while (timeout &&
		       !(FUNC3(dev->iobase + AIO12_8_STATUS) & STATUS_ADC_EOC)) {
			timeout--;
			FUNC6("timeout %d\n", timeout);
			FUNC7(1);
		}
		if (timeout == 0) {
			FUNC2(dev, "ADC timeout");
			return -EIO;
		}

		data[n] = FUNC4(dev->iobase + AIO12_8_ADC) & 0x0FFF;
	}
	return n;
}