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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {unsigned int act_chanlist_len; int* act_chanlist; int ai_et_MuxVal; scalar_t__ act_chanlist_pos; } ;
struct TYPE_3__ {unsigned int* rangecode_ai; } ;

/* Variables and functions */
 scalar_t__ AREF_DIFF ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 size_t FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 scalar_t__ PCI171x_MUX ; 
 scalar_t__ PCI171x_RANGE ; 
 TYPE_2__* devpriv ; 
 unsigned int* muxonechan ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 
 TYPE_1__* this_board ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       unsigned int *chanlist, unsigned int n_chan,
			       unsigned int seglen)
{
	unsigned int i, range, chanprog;

	FUNC3("adv_pci1710 EDBG:  setup_channel_list(...,%d,%d)\n", n_chan,
		seglen);
	devpriv->act_chanlist_len = seglen;
	devpriv->act_chanlist_pos = 0;

	FUNC3("SegLen: %d\n", seglen);
	for (i = 0; i < seglen; i++) {	/*  store range list to card */
		chanprog = muxonechan[FUNC1(chanlist[i])];
		FUNC4(chanprog, dev->iobase + PCI171x_MUX);	/* select channel */
		range = this_board->rangecode_ai[FUNC2(chanlist[i])];
		if (FUNC0(chanlist[i]) == AREF_DIFF)
			range |= 0x0020;
		FUNC4(range, dev->iobase + PCI171x_RANGE);	/* select gain */
#ifdef PCI171x_PARANOIDCHECK
		devpriv->act_chanlist[i] =
		    (CR_CHAN(chanlist[i]) << 12) & 0xf000;
#endif
		FUNC3("GS: %2d. [%4x]=%4x %4x\n", i, chanprog, range,
			devpriv->act_chanlist[i]);
	}

	devpriv->ai_et_MuxVal =
	    FUNC1(chanlist[0]) | (FUNC1(chanlist[seglen - 1]) << 8);
	FUNC4(devpriv->ai_et_MuxVal, dev->iobase + PCI171x_MUX);	/* select channel interval to scan */
	FUNC3("MUX: %4x L%4x.H%4x\n",
		FUNC1(chanlist[0]) | (FUNC1(chanlist[seglen - 1]) << 8),
		FUNC1(chanlist[0]), FUNC1(chanlist[seglen - 1]));
}