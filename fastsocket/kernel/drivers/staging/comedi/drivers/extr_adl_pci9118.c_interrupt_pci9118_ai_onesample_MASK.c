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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {unsigned short ai_maskerr; scalar_t__ ai16bits; short* chanlist; size_t ai_n_scanlen; scalar_t__ ai_act_scan; scalar_t__ ai_scans; int /*<<< orphan*/  ai_neverending; } ;
struct TYPE_3__ {int events; size_t cur_chan; } ;

/* Variables and functions */
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 scalar_t__ PCI9118_AD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,short) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_2__* devpriv ; 
 short FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 scalar_t__ FUNC4 (struct comedi_device*,struct comedi_subdevice*,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (char*,short,short) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
					   struct comedi_subdevice *s,
					   unsigned short int_adstat,
					   unsigned int int_amcc,
					   unsigned short int_daq)
{
	register short sampl;

	s->async->events = 0;

	if (int_adstat & devpriv->ai_maskerr)
		if (FUNC4(dev, s, int_adstat))
			return;

	sampl = FUNC2(dev->iobase + PCI9118_AD_DATA);

#ifdef PCI9118_PARANOIDCHECK
	if (devpriv->ai16bits == 0) {
		if ((sampl & 0x000f) != devpriv->chanlist[s->async->cur_chan]) {	/*  data dropout! */
			printk
			    ("comedi: A/D  SAMPL - data dropout: received channel %d, expected %d!\n",
			     sampl & 0x000f,
			     devpriv->chanlist[s->async->cur_chan]);
			s->async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
			pci9118_ai_cancel(dev, s);
			comedi_event(dev, s);
			return;
		}
	}
#endif
	FUNC0(s, sampl);
	s->async->cur_chan++;
	if (s->async->cur_chan >= devpriv->ai_n_scanlen) {	/* one scan done */
		s->async->cur_chan %= devpriv->ai_n_scanlen;
		devpriv->ai_act_scan++;
		if (!(devpriv->ai_neverending))
			if (devpriv->ai_act_scan >= devpriv->ai_scans) {	/* all data sampled */
				FUNC3(dev, s);
				s->async->events |= COMEDI_CB_EOA;
			}
	}

	if (s->async->events)
		FUNC1(dev, s);
}