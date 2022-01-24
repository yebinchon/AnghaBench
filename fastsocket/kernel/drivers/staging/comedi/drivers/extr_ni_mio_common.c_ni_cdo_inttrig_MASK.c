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
struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  prealloc_bufsz; int /*<<< orphan*/ * inttrig; } ;
struct TYPE_3__ {int /*<<< orphan*/  mite_channel_lock; scalar_t__ cdo_mite_chan; } ;

/* Variables and functions */
 int CDO_Arm_Bit ; 
 int CDO_Empty_FIFO_Interrupt_Enable_Set_Bit ; 
 int CDO_Error_Interrupt_Enable_Set_Bit ; 
 int CDO_FIFO_Full_Bit ; 
 int EIO ; 
 int /*<<< orphan*/  M_Offset_CDIO_Command ; 
 int /*<<< orphan*/  M_Offset_CDIO_Status ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev, struct comedi_subdevice *s,
			  unsigned int trignum)
{
#ifdef PCIDMA
	unsigned long flags;
#endif
	int retval = 0;
	unsigned i;
	const unsigned timeout = 100;

	s->async->inttrig = NULL;

	/* read alloc the entire buffer */
	FUNC0(s->async, s->async->prealloc_bufsz);

#ifdef PCIDMA
	spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
	if (devpriv->cdo_mite_chan) {
		mite_prep_dma(devpriv->cdo_mite_chan, 32, 32);
		mite_dma_arm(devpriv->cdo_mite_chan);
	} else {
		comedi_error(dev, "BUG: no cdo mite channel?");
		retval = -EIO;
	}
	spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
	if (retval < 0)
		return retval;
#endif
/*
* XXX not sure what interrupt C group does
* ni_writeb(Interrupt_Group_C_Enable_Bit,
* M_Offset_Interrupt_C_Enable); wait for dma to fill output fifo
*/
	for (i = 0; i < timeout; ++i) {
		if (FUNC5(M_Offset_CDIO_Status) & CDO_FIFO_Full_Bit)
			break;
		FUNC9(10);
	}
	if (i == timeout) {
		FUNC1(dev, "dma failed to fill cdo fifo!");
		FUNC4(dev, s);
		return -EIO;
	}
	FUNC6(CDO_Arm_Bit | CDO_Error_Interrupt_Enable_Set_Bit |
		  CDO_Empty_FIFO_Interrupt_Enable_Set_Bit,
		  M_Offset_CDIO_Command);
	return retval;
}