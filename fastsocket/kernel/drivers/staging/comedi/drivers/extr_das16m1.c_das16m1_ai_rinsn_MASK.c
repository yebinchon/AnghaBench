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
struct TYPE_2__ {int control_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS16M1_CLEAR_INTR ; 
 scalar_t__ DAS16M1_CS ; 
 scalar_t__ DAS16M1_INTR_CONTROL ; 
 scalar_t__ DAS16M1_QUEUE_ADDR ; 
 scalar_t__ DAS16M1_QUEUE_DATA ; 
 int ETIME ; 
 int INTE ; 
 int IRQDATA ; 
 int PACER_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
			    struct comedi_subdevice *s,
			    struct comedi_insn *insn, unsigned int *data)
{
	int i, n;
	int byte;
	const int timeout = 1000;

	/* disable interrupts and internal pacer */
	devpriv->control_state &= ~INTE & ~PACER_MASK;
	FUNC8(devpriv->control_state, dev->iobase + DAS16M1_INTR_CONTROL);

	/* setup channel/gain queue */
	FUNC8(0, dev->iobase + DAS16M1_QUEUE_ADDR);
	byte =
	    FUNC2(FUNC0(insn->chanspec)) | FUNC3(FUNC1(insn->chanspec));
	FUNC8(byte, dev->iobase + DAS16M1_QUEUE_DATA);

	for (n = 0; n < insn->n; n++) {
		/* clear IRQDATA bit */
		FUNC8(0, dev->iobase + DAS16M1_CLEAR_INTR);
		/* trigger conversion */
		FUNC8(0, dev->iobase);

		for (i = 0; i < timeout; i++) {
			if (FUNC5(dev->iobase + DAS16M1_CS) & IRQDATA)
				break;
		}
		if (i == timeout) {
			FUNC4(dev, "timeout");
			return -ETIME;
		}
		data[n] = FUNC7(FUNC6(dev->iobase));
	}

	return n;
}