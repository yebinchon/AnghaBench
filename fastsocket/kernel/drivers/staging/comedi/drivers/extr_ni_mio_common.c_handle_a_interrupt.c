
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {scalar_t__ type; TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_4__ {unsigned short (* stc_readw ) (struct comedi_device*,int ) ;int ai_continuous; } ;
struct TYPE_3__ {int events; } ;


 unsigned short AI_FIFO_Half_Full_St ;
 unsigned short AI_Overflow_St ;
 unsigned short AI_Overrun_St ;
 unsigned short AI_SC_TC_Error_St ;
 unsigned short AI_SC_TC_St ;
 unsigned short AI_START1_St ;
 unsigned short AI_STOP_St ;
 int AI_Status_1_Register ;
 unsigned int CHSR_DONE ;
 unsigned int CHSR_DRDY ;
 unsigned int CHSR_DRQ0 ;
 unsigned int CHSR_DRQ1 ;
 unsigned int CHSR_ERROR ;
 unsigned int CHSR_INT ;
 unsigned int CHSR_LINKC ;
 unsigned int CHSR_LxERR_mask ;
 unsigned int CHSR_MRDY ;
 unsigned int CHSR_SABORT ;
 unsigned int CHSR_XFERR ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int COMEDI_CB_OVERFLOW ;
 scalar_t__ COMEDI_SUBD_UNUSED ;
 unsigned short Interrupt_A_St ;
 int NI_AI_SUBDEV ;
 int SRF_RUNNING ;
 int comedi_get_subdevice_runflags (struct comedi_subdevice*) ;
 TYPE_2__* devpriv ;
 int ni_event (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_handle_eos (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_handle_fifo_half_full (struct comedi_device*) ;
 int ni_mio_print_status_a (unsigned short) ;
 int ni_sync_ai_dma (struct comedi_device*) ;
 int printk (char*,...) ;
 int shutdown_ai_command (struct comedi_device*) ;
 unsigned short stub1 (struct comedi_device*,int ) ;
 unsigned short stub2 (struct comedi_device*,int ) ;

__attribute__((used)) static void handle_a_interrupt(struct comedi_device *dev, unsigned short status,
          unsigned ai_mite_status)
{
 struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;


 if (s->type == COMEDI_SUBD_UNUSED)
  return;
 if (status & (AI_Overrun_St | AI_Overflow_St | AI_SC_TC_Error_St |
        AI_SC_TC_St | AI_START1_St)) {
  if (status == 0xffff) {
   printk
       ("ni_mio_common: a_status=0xffff.  Card removed?\n");


   if (comedi_get_subdevice_runflags(s) & SRF_RUNNING) {
    s->async->events |=
        COMEDI_CB_ERROR | COMEDI_CB_EOA;
    ni_event(dev, s);
   }
   return;
  }
  if (status & (AI_Overrun_St | AI_Overflow_St |
         AI_SC_TC_Error_St)) {
   printk("ni_mio_common: ai error a_status=%04x\n",
          status);
   ni_mio_print_status_a(status);

   shutdown_ai_command(dev);

   s->async->events |= COMEDI_CB_ERROR;
   if (status & (AI_Overrun_St | AI_Overflow_St))
    s->async->events |= COMEDI_CB_OVERFLOW;

   ni_event(dev, s);

   return;
  }
  if (status & AI_SC_TC_St) {



   if (!devpriv->ai_continuous) {
    shutdown_ai_command(dev);
   }
  }
 }

 if (status & AI_FIFO_Half_Full_St) {
  int i;
  static const int timeout = 10;


  for (i = 0; i < timeout; ++i) {
   ni_handle_fifo_half_full(dev);
   if ((devpriv->stc_readw(dev,
      AI_Status_1_Register) &
        AI_FIFO_Half_Full_St) == 0)
    break;
  }
 }


 if ((status & AI_STOP_St)) {
  ni_handle_eos(dev, s);
 }

 ni_event(dev, s);
}
