
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int prealloc_bufsz; int * inttrig; } ;
struct TYPE_3__ {int mite_channel_lock; scalar_t__ cdo_mite_chan; } ;


 int CDO_Arm_Bit ;
 int CDO_Empty_FIFO_Interrupt_Enable_Set_Bit ;
 int CDO_Error_Interrupt_Enable_Set_Bit ;
 int CDO_FIFO_Full_Bit ;
 int EIO ;
 int M_Offset_CDIO_Command ;
 int M_Offset_CDIO_Status ;
 int comedi_buf_read_alloc (TYPE_2__*,int ) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int mite_dma_arm (scalar_t__) ;
 int mite_prep_dma (scalar_t__,int,int) ;
 int ni_cdio_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_readl (int ) ;
 int ni_writel (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int ni_cdo_inttrig(struct comedi_device *dev, struct comedi_subdevice *s,
     unsigned int trignum)
{



 int retval = 0;
 unsigned i;
 const unsigned timeout = 100;

 s->async->inttrig = ((void*)0);


 comedi_buf_read_alloc(s->async, s->async->prealloc_bufsz);
 for (i = 0; i < timeout; ++i) {
  if (ni_readl(M_Offset_CDIO_Status) & CDO_FIFO_Full_Bit)
   break;
  udelay(10);
 }
 if (i == timeout) {
  comedi_error(dev, "dma failed to fill cdo fifo!");
  ni_cdio_cancel(dev, s);
  return -EIO;
 }
 ni_writel(CDO_Arm_Bit | CDO_Error_Interrupt_Enable_Set_Bit |
    CDO_Empty_FIFO_Interrupt_Enable_Set_Bit,
    M_Offset_CDIO_Command);
 return retval;
}
