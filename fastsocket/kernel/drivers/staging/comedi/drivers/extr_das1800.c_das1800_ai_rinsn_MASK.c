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
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;
struct TYPE_2__ {int resolution; } ;

/* Variables and functions */
 int ADC ; 
 int AREF_COMMON ; 
 int AREF_DIFF ; 
 int CMEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int CVEN ; 
 scalar_t__ DAS1800_CONTROL_A ; 
 scalar_t__ DAS1800_CONTROL_C ; 
 scalar_t__ DAS1800_FIFO ; 
 scalar_t__ DAS1800_QRAM ; 
 scalar_t__ DAS1800_QRAM_ADDRESS ; 
 scalar_t__ DAS1800_SELECT ; 
 scalar_t__ DAS1800_STATUS ; 
 int ETIME ; 
 int FFEN ; 
 int FNE ; 
 int QRAM ; 
 int SD ; 
 int UB ; 
 int UNIPOLAR ; 
 int UQEN ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,char*) ; 
 int FUNC4 (scalar_t__) ; 
 short FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			    struct comedi_subdevice *s,
			    struct comedi_insn *insn, unsigned int *data)
{
	int i, n;
	int chan, range, aref, chan_range;
	int timeout = 1000;
	short dpnt;
	int conv_flags = 0;
	unsigned long irq_flags;

	/* set up analog reference and unipolar / bipolar mode */
	aref = FUNC0(insn->chanspec);
	conv_flags |= UQEN;
	if (aref != AREF_DIFF)
		conv_flags |= SD;
	if (aref == AREF_COMMON)
		conv_flags |= CMEN;
	/* if a unipolar range was selected */
	if (FUNC2(insn->chanspec) & UNIPOLAR)
		conv_flags |= UB;

	FUNC6(conv_flags, dev->iobase + DAS1800_CONTROL_C);	/* software conversion enabled */
	FUNC6(CVEN, dev->iobase + DAS1800_STATUS);	/* enable conversions */
	FUNC6(0x0, dev->iobase + DAS1800_CONTROL_A);	/* reset fifo */
	FUNC6(FFEN, dev->iobase + DAS1800_CONTROL_A);

	chan = FUNC1(insn->chanspec);
	/* mask of unipolar/bipolar bit from range */
	range = FUNC2(insn->chanspec) & 0x3;
	chan_range = chan | (range << 8);
	FUNC8(&dev->spinlock, irq_flags);
	FUNC6(QRAM, dev->iobase + DAS1800_SELECT);	/* select QRAM for baseAddress + 0x0 */
	FUNC6(0x0, dev->iobase + DAS1800_QRAM_ADDRESS);	/* set QRAM address start */
	FUNC7(chan_range, dev->iobase + DAS1800_QRAM);
	FUNC6(0x0, dev->iobase + DAS1800_QRAM_ADDRESS);	/*finish write to QRAM */
	FUNC6(ADC, dev->iobase + DAS1800_SELECT);	/* select ADC for baseAddress + 0x0 */

	for (n = 0; n < insn->n; n++) {
		/* trigger conversion */
		FUNC6(0, dev->iobase + DAS1800_FIFO);
		for (i = 0; i < timeout; i++) {
			if (FUNC4(dev->iobase + DAS1800_STATUS) & FNE)
				break;
		}
		if (i == timeout) {
			FUNC3(dev, "timeout");
			return -ETIME;
		}
		dpnt = FUNC5(dev->iobase + DAS1800_FIFO);
		/* shift data to offset binary for bipolar ranges */
		if ((conv_flags & UB) == 0)
			dpnt += 1 << (thisboard->resolution - 1);
		data[n] = dpnt;
	}
	FUNC9(&dev->spinlock, irq_flags);

	return n;
}