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
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 scalar_t__ DAS1800_CONTROL_C ; 
 scalar_t__ DAS1800_FIFO ; 
 scalar_t__ DAS1800_STATUS ; 
 int FNE ; 
 scalar_t__ TRIG_COUNT ; 
 int UB ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,short) ; 
 TYPE_2__* devpriv ; 
 int FUNC1 (scalar_t__) ; 
 short FUNC2 (scalar_t__) ; 
 short FUNC3 (struct comedi_device*,short) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
					  struct comedi_subdevice *s)
{
	short dpnt;
	int unipolar;
	struct comedi_cmd *cmd = &s->async->cmd;

	unipolar = FUNC1(dev->iobase + DAS1800_CONTROL_C) & UB;

	while (FUNC1(dev->iobase + DAS1800_STATUS) & FNE) {
		if (cmd->stop_src == TRIG_COUNT && devpriv->count == 0)
			break;
		dpnt = FUNC2(dev->iobase + DAS1800_FIFO);
		/* convert to unsigned type if we are in a bipolar mode */
		if (!unipolar) ;
		dpnt = FUNC3(dev, dpnt);
		FUNC0(s, dpnt);
		if (cmd->stop_src == TRIG_COUNT)
			devpriv->count--;
	}

	return;
}