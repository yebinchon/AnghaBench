#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {TYPE_3__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_11__ {int reg_type; } ;
struct TYPE_10__ {int /*<<< orphan*/  mite_channel_lock; TYPE_2__* cdo_mite_chan; TYPE_1__* mite; } ;
struct TYPE_9__ {int /*<<< orphan*/  events; } ;
struct TYPE_8__ {int /*<<< orphan*/  channel; } ;
struct TYPE_7__ {scalar_t__ mite_io_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit ; 
 int /*<<< orphan*/  CDO_Error_Interrupt_Confirm_Bit ; 
 unsigned int CDO_FIFO_Empty_Bit ; 
 unsigned int CDO_Overrun_Bit ; 
 unsigned int CDO_Underflow_Bit ; 
 int /*<<< orphan*/  CHOR_CLRLC ; 
 unsigned int CHSR_LINKC ; 
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_Offset_CDIO_Command ; 
 int /*<<< orphan*/  M_Offset_CDIO_Status ; 
 int NI_DIO_SUBDEV ; 
 TYPE_6__ boardtype ; 
 TYPE_5__* devpriv ; 
 unsigned int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int ni_reg_m_series_mask ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev)
{
	unsigned cdio_status;
	struct comedi_subdevice *s = dev->subdevices + NI_DIO_SUBDEV;
#ifdef PCIDMA
	unsigned long flags;
#endif

	if ((boardtype.reg_type & ni_reg_m_series_mask) == 0) {
		return;
	}
#ifdef PCIDMA
	spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
	if (devpriv->cdo_mite_chan) {
		unsigned cdo_mite_status =
		    mite_get_status(devpriv->cdo_mite_chan);
		if (cdo_mite_status & CHSR_LINKC) {
			writel(CHOR_CLRLC,
			       devpriv->mite->mite_io_addr +
			       MITE_CHOR(devpriv->cdo_mite_chan->channel));
		}
		mite_sync_output_dma(devpriv->cdo_mite_chan, s->async);
	}
	spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
#endif

	cdio_status = FUNC4(M_Offset_CDIO_Status);
	if (cdio_status & (CDO_Overrun_Bit | CDO_Underflow_Bit)) {
/* printk("cdio error: statux=0x%x\n", cdio_status); */
		FUNC5(CDO_Error_Interrupt_Confirm_Bit, M_Offset_CDIO_Command);	/*  XXX just guessing this is needed and does something useful */
		s->async->events |= COMEDI_CB_OVERFLOW;
	}
	if (cdio_status & CDO_FIFO_Empty_Bit) {
/* printk("cdio fifo empty\n"); */
		FUNC5(CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit,
			  M_Offset_CDIO_Command);
/* s->async->events |= COMEDI_CB_EOA; */
	}
	FUNC3(dev, s);
}