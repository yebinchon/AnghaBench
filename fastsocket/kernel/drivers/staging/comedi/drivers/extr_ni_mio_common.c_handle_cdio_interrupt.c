
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct comedi_subdevice {TYPE_3__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_11__ {int reg_type; } ;
struct TYPE_10__ {int mite_channel_lock; TYPE_2__* cdo_mite_chan; TYPE_1__* mite; } ;
struct TYPE_9__ {int events; } ;
struct TYPE_8__ {int channel; } ;
struct TYPE_7__ {scalar_t__ mite_io_addr; } ;


 int CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit ;
 int CDO_Error_Interrupt_Confirm_Bit ;
 unsigned int CDO_FIFO_Empty_Bit ;
 unsigned int CDO_Overrun_Bit ;
 unsigned int CDO_Underflow_Bit ;
 int CHOR_CLRLC ;
 unsigned int CHSR_LINKC ;
 int COMEDI_CB_OVERFLOW ;
 scalar_t__ MITE_CHOR (int ) ;
 int M_Offset_CDIO_Command ;
 int M_Offset_CDIO_Status ;
 int NI_DIO_SUBDEV ;
 TYPE_6__ boardtype ;
 TYPE_5__* devpriv ;
 unsigned int mite_get_status (TYPE_2__*) ;
 int mite_sync_output_dma (TYPE_2__*,TYPE_3__*) ;
 int ni_event (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int ni_readl (int ) ;
 int ni_reg_m_series_mask ;
 int ni_writel (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void handle_cdio_interrupt(struct comedi_device *dev)
{
 unsigned cdio_status;
 struct comedi_subdevice *s = dev->subdevices + NI_DIO_SUBDEV;




 if ((boardtype.reg_type & ni_reg_m_series_mask) == 0) {
  return;
 }
 cdio_status = ni_readl(M_Offset_CDIO_Status);
 if (cdio_status & (CDO_Overrun_Bit | CDO_Underflow_Bit)) {

  ni_writel(CDO_Error_Interrupt_Confirm_Bit, M_Offset_CDIO_Command);
  s->async->events |= COMEDI_CB_OVERFLOW;
 }
 if (cdio_status & CDO_FIFO_Empty_Bit) {

  ni_writel(CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit,
     M_Offset_CDIO_Command);

 }
 ni_event(dev, s);
}
