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
struct local_info_t {int /*<<< orphan*/  eos; struct comedi_subdevice* s; struct comedi_device* dev; int /*<<< orphan*/  interrupt_mode; scalar_t__ stop; } ;
struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ AREF_DIFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAQP_AUX ; 
 scalar_t__ DAQP_COMMAND ; 
 int DAQP_COMMAND_ARM ; 
 int DAQP_COMMAND_FIFO_DATA ; 
 int DAQP_COMMAND_RSTF ; 
 int DAQP_COMMAND_RSTQ ; 
 scalar_t__ DAQP_CONTROL ; 
 int DAQP_CONTROL_EOS_INT_ENABLE ; 
 int DAQP_CONTROL_PACER_100kHz ; 
 int DAQP_CONTROL_TRIGGER_INTERNAL ; 
 int DAQP_CONTROL_TRIGGER_ONESHOT ; 
 scalar_t__ DAQP_FIFO ; 
 scalar_t__ DAQP_SCANLIST ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int DAQP_SCANLIST_DIFFERENTIAL ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int DAQP_SCANLIST_START ; 
 scalar_t__ DAQP_STATUS ; 
 int DAQP_STATUS_EVENTS ; 
 int EINTR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  semaphore ; 

__attribute__((used)) static int FUNC11(struct comedi_device *dev,
			     struct comedi_subdevice *s,
			     struct comedi_insn *insn, unsigned int *data)
{
	struct local_info_t *local = (struct local_info_t *)s->private;
	int i;
	int v;
	int counter = 10000;

	if (local->stop) {
		return -EIO;
	}

	/* Stop any running conversion */
	FUNC5(dev, s);

	FUNC8(0, dev->iobase + DAQP_AUX);

	/* Reset scan list queue */
	FUNC8(DAQP_COMMAND_RSTQ, dev->iobase + DAQP_COMMAND);

	/* Program one scan list entry */

	v = FUNC3(FUNC1(insn->chanspec))
	    | FUNC4(FUNC2(insn->chanspec));

	if (FUNC0(insn->chanspec) == AREF_DIFF) {
		v |= DAQP_SCANLIST_DIFFERENTIAL;
	}

	v |= DAQP_SCANLIST_START;

	FUNC8(v & 0xff, dev->iobase + DAQP_SCANLIST);
	FUNC8(v >> 8, dev->iobase + DAQP_SCANLIST);

	/* Reset data FIFO (see page 28 of DAQP User's Manual) */

	FUNC8(DAQP_COMMAND_RSTF, dev->iobase + DAQP_COMMAND);

	/* Set trigger */

	v = DAQP_CONTROL_TRIGGER_ONESHOT | DAQP_CONTROL_TRIGGER_INTERNAL
	    | DAQP_CONTROL_PACER_100kHz | DAQP_CONTROL_EOS_INT_ENABLE;

	FUNC8(v, dev->iobase + DAQP_CONTROL);

	/* Reset any pending interrupts (my card has a tendancy to require
	 * require multiple reads on the status register to achieve this)
	 */

	while (--counter
	       && (FUNC7(dev->iobase + DAQP_STATUS) & DAQP_STATUS_EVENTS)) ;
	if (!counter) {
		FUNC9("daqp: couldn't clear interrupts in status register\n");
		return -1;
	}

	/* Make sure semaphore is blocked */
	FUNC10(&local->eos, 0);
	local->interrupt_mode = semaphore;
	local->dev = dev;
	local->s = s;

	for (i = 0; i < insn->n; i++) {

		/* Start conversion */
		FUNC8(DAQP_COMMAND_ARM | DAQP_COMMAND_FIFO_DATA,
		     dev->iobase + DAQP_COMMAND);

		/* Wait for interrupt service routine to unblock semaphore */
		/* Maybe could use a timeout here, but it's interruptible */
		if (FUNC6(&local->eos))
			return -EINTR;

		data[i] = FUNC7(dev->iobase + DAQP_FIFO);
		data[i] |= FUNC7(dev->iobase + DAQP_FIFO) << 8;
		data[i] ^= 0x8000;
	}

	return insn->n;
}