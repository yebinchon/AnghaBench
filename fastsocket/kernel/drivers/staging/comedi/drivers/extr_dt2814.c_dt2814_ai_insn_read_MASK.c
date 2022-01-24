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
 scalar_t__ DT2814_CSR ; 
 scalar_t__ DT2814_DATA ; 
 int DT2814_FINISH ; 
 int DT2814_TIMEOUT ; 
 int ETIMEDOUT ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int n, i, hi, lo;
	int chan;
	int status = 0;

	for (n = 0; n < insn->n; n++) {
		chan = FUNC0(insn->chanspec);

		FUNC2(chan, dev->iobase + DT2814_CSR);
		for (i = 0; i < DT2814_TIMEOUT; i++) {
			status = FUNC1(dev->iobase + DT2814_CSR);
			FUNC3("dt2814: status: %02x\n", status);
			FUNC4(10);
			if (status & DT2814_FINISH)
				break;
		}
		if (i >= DT2814_TIMEOUT) {
			FUNC3("dt2814: status: %02x\n", status);
			return -ETIMEDOUT;
		}

		hi = FUNC1(dev->iobase + DT2814_DATA);
		lo = FUNC1(dev->iobase + DT2814_DATA);

		data[n] = (hi << 4) | (lo >> 4);
	}

	return n;
}