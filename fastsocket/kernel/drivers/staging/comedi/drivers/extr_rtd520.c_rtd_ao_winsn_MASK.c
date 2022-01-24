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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* aoValue; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int ETIMEDOUT ; 
 int FS_DAC1_NOT_EMPTY ; 
 int FS_DAC2_NOT_EMPTY ; 
 int RTD_DAC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int) ; 
 int FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  WAIT_QUIETLY ; 
 TYPE_1__* devpriv ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
			struct comedi_subdevice *s, struct comedi_insn *insn,
			unsigned int *data)
{
	int i;
	int chan = FUNC0(insn->chanspec);
	int range = FUNC1(insn->chanspec);

	/* Configure the output range (table index matches the range values) */
	FUNC4(dev, chan, range);

	/* Writing a list of values to an AO channel is probably not
	 * very useful, but that's how the interface is defined. */
	for (i = 0; i < insn->n; ++i) {
		int val = data[i] << 3;
		int stat = 0;	/* initialize to avoid bogus warning */
		int ii;

		/* VERIFY: comedi range and offset conversions */

		if ((range > 1)	/* bipolar */
		    &&(data[i] < 2048)) {
			/* offset and sign extend */
			val = (((int)data[i]) - 2048) << 3;
		} else {	/* unipolor */
			val = data[i] << 3;
		}

		FUNC2
		    ("comedi: rtd520 DAC chan=%d range=%d writing %d as 0x%x\n",
		     chan, range, data[i], val);

		/* a typical programming sequence */
		FUNC3(dev, chan, val);	/* put the value in */
		FUNC5(dev, chan);	/* trigger the conversion */

		devpriv->aoValue[chan] = data[i];	/* save for read back */

		for (ii = 0; ii < RTD_DAC_TIMEOUT; ++ii) {
			stat = FUNC6(dev);
			/* 1 -> not empty */
			if (stat & ((0 == chan) ? FS_DAC1_NOT_EMPTY :
				    FS_DAC2_NOT_EMPTY))
				break;
			WAIT_QUIETLY;
		}
		if (ii >= RTD_DAC_TIMEOUT) {
			FUNC2
			    ("rtd520: Error: DAC never finished! FifoStatus=0x%x\n",
			     stat ^ 0x6666);
			return -ETIMEDOUT;
		}
	}

	/* return the number of samples read/written */
	return i;
}