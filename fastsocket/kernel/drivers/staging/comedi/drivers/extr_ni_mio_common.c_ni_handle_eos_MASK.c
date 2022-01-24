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
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ aimode; int ai_cmd2; } ;
struct TYPE_3__ {int events; } ;

/* Variables and functions */
 scalar_t__ AIMODE_SCAN ; 
 int AI_End_On_End_Of_Scan ; 
 int COMEDI_CB_EOS ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev, struct comedi_subdevice *s)
{
	if (devpriv->aimode == AIMODE_SCAN) {
#ifdef PCIDMA
		static const int timeout = 10;
		int i;

		for (i = 0; i < timeout; i++) {
			ni_sync_ai_dma(dev);
			if ((s->async->events & COMEDI_CB_EOS))
				break;
			udelay(1);
		}
#else
		FUNC0(dev);
		s->async->events |= COMEDI_CB_EOS;
#endif
	}
	/* handle special case of single scan using AI_End_On_End_Of_Scan */
	if ((devpriv->ai_cmd2 & AI_End_On_End_Of_Scan)) {
		FUNC2(dev);
	}
}