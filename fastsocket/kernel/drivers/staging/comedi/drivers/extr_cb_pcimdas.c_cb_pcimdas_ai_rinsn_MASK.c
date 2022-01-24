#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ BADR2; scalar_t__ BADR3; } ;
struct TYPE_3__ {int ai_diff_chans; int ai_se_chans; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int TIMEOUT ; 
 TYPE_2__* devpriv ; 
 int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int n, i;
	unsigned int d;
	unsigned int busy;
	int chan = FUNC0(insn->chanspec);
	unsigned short chanlims;
	int maxchans;

	/*  only support sw initiated reads from a single channel */

	/* check channel number */
	if ((FUNC1(devpriv->BADR3 + 2) & 0x20) == 0)	/* differential mode */
		maxchans = thisboard->ai_diff_chans;
	else
		maxchans = thisboard->ai_se_chans;

	if (chan > (maxchans - 1))
		return -ETIMEDOUT;	/* *** Wrong error code. Fixme. */

	/* configure for sw initiated read */
	d = FUNC1(devpriv->BADR3 + 5);
	if ((d & 0x03) > 0) {	/* only reset if needed. */
		d = d & 0xfd;
		FUNC3(d, devpriv->BADR3 + 5);
	}
	FUNC3(0x01, devpriv->BADR3 + 6);	/* set bursting off, conversions on */
	FUNC3(0x00, devpriv->BADR3 + 7);	/* set range to 10V. UP/BP is controlled by a switch on the board */

	/*  write channel limits to multiplexer, set Low (bits 0-3) and High (bits 4-7) channels to chan. */
	chanlims = chan | (chan << 4);
	FUNC3(chanlims, devpriv->BADR3 + 0);

	/* convert n samples */
	for (n = 0; n < insn->n; n++) {
		/* trigger conversion */
		FUNC4(0, devpriv->BADR2 + 0);

#define TIMEOUT 1000		/* typically takes 5 loops on a lightly loaded Pentium 100MHz, */
		/* this is likely to be 100 loops on a 2GHz machine, so set 1000 as the limit. */

		/* wait for conversion to end */
		for (i = 0; i < TIMEOUT; i++) {
			busy = FUNC1(devpriv->BADR3 + 2) & 0x80;
			if (!busy)
				break;
		}
		if (i == TIMEOUT) {
			FUNC5("timeout\n");
			return -ETIMEDOUT;
		}
		/* read data */
		d = FUNC2(devpriv->BADR2 + 0);

		/* mangle the data as necessary */
		/* d ^= 1<<(thisboard->ai_bits-1); // 16 bit data from ADC, so no mangle needed. */

		data[n] = d;
	}

	/* return the number of samples read/written */
	return n;
}