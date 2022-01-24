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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EIO ; 
 scalar_t__ PCL816_AD_HI ; 
 scalar_t__ PCL816_AD_LO ; 
 scalar_t__ PCL816_CLRINT ; 
 scalar_t__ PCL816_CONTROL ; 
 scalar_t__ PCL816_MUX ; 
 scalar_t__ PCL816_RANGE ; 
 scalar_t__ PCL816_STATUS ; 
 int PCL816_STATUS_DRDY_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,char*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int n;
	int timeout;

	FUNC2("mode 0 analog input\n");
	/*  software trigger, DMA and INT off */
	FUNC5(0, dev->iobase + PCL816_CONTROL);
	/*  clear INT (conversion end) flag */
	FUNC5(0, dev->iobase + PCL816_CLRINT);

	/*  Set the input channel */
	FUNC5(FUNC0(insn->chanspec) & 0xf, dev->iobase + PCL816_MUX);
	FUNC5(FUNC1(insn->chanspec), dev->iobase + PCL816_RANGE);	/* select gain */

	for (n = 0; n < insn->n; n++) {

		FUNC5(0, dev->iobase + PCL816_AD_LO);	/* start conversion */

		timeout = 100;
		while (timeout--) {
			if (!(FUNC4(dev->iobase + PCL816_STATUS) &
			      PCL816_STATUS_DRDY_MASK)) {
				/*  return read value */
				data[n] =
				    ((FUNC4(dev->iobase +
					  PCL816_AD_HI) << 8) |
				     (FUNC4(dev->iobase + PCL816_AD_LO)));

				FUNC5(0, dev->iobase + PCL816_CLRINT);	/* clear INT (conversion end) flag */
				break;
			}
			FUNC6(1);
		}
		/*  Return timeout error */
		if (!timeout) {
			FUNC3(dev, "A/D insn timeout\n");
			data[0] = 0;
			FUNC5(0, dev->iobase + PCL816_CLRINT);	/* clear INT (conversion end) flag */
			return -EIO;
		}

	}
	return n;
}