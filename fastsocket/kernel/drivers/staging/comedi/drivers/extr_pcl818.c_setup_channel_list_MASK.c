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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int act_chanlist_len; size_t* act_chanlist; scalar_t__ act_chanlist_pos; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ PCL818_MUX ; 
 scalar_t__ PCL818_RANGE ; 
 TYPE_1__* devpriv ; 
 int* muxonechan ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       unsigned int *chanlist, unsigned int n_chan,
			       unsigned int seglen)
{
	int i;

	devpriv->act_chanlist_len = seglen;
	devpriv->act_chanlist_pos = 0;

	for (i = 0; i < seglen; i++) {	/*  store range list to card */
		devpriv->act_chanlist[i] = FUNC0(chanlist[i]);
		FUNC2(muxonechan[FUNC0(chanlist[i])], dev->iobase + PCL818_MUX);	/* select channel */
		FUNC2(FUNC1(chanlist[i]), dev->iobase + PCL818_RANGE);	/* select gain */
	}

	FUNC3(1);

	/* select channel interval to scan */
	FUNC2(devpriv->act_chanlist[0] | (devpriv->act_chanlist[seglen -
							       1] << 4),
	     dev->iobase + PCL818_MUX);
}