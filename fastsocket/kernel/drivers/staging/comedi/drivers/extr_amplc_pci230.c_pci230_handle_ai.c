
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_3__ {unsigned int scan_end_arg; } ;
struct comedi_async {unsigned int events; TYPE_1__ cmd; } ;
struct TYPE_4__ {unsigned int ai_scan_count; unsigned int ai_scan_pos; scalar_t__ hwver; scalar_t__ ai_continuous; } ;


 unsigned int COMEDI_CB_BLOCK ;
 unsigned int COMEDI_CB_EOA ;
 unsigned int COMEDI_CB_EOS ;
 unsigned int COMEDI_CB_ERROR ;
 unsigned int COMEDI_CB_OVERFLOW ;
 scalar_t__ PCI230P_ADCFFLEV ;
 scalar_t__ PCI230_ADCCON ;
 unsigned int PCI230_ADC_FIFOLEVEL_HALFFULL ;
 unsigned int PCI230_ADC_FIFO_EMPTY ;
 unsigned int PCI230_ADC_FIFO_FULL_LATCHED ;
 unsigned int PCI230_ADC_FIFO_HALF ;
 scalar_t__ comedi_buf_put (struct comedi_async*,int ) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 unsigned int inw (scalar_t__) ;
 int pci230_ai_read (struct comedi_device*) ;
 int pci230_ai_stop (struct comedi_device*,struct comedi_subdevice*) ;
 int pci230_ai_update_fifo_trigger_level (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static void pci230_handle_ai(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 unsigned int events = 0;
 unsigned int status_fifo;
 unsigned int i;
 unsigned int todo;
 unsigned int fifoamount;
 struct comedi_async *async = s->async;
 unsigned int scanlen = async->cmd.scan_end_arg;


 if (devpriv->ai_continuous) {
  todo = PCI230_ADC_FIFOLEVEL_HALFFULL;
 } else if (devpriv->ai_scan_count == 0) {
  todo = 0;
 } else if ((devpriv->ai_scan_count > PCI230_ADC_FIFOLEVEL_HALFFULL)
     || (scanlen > PCI230_ADC_FIFOLEVEL_HALFFULL)) {
  todo = PCI230_ADC_FIFOLEVEL_HALFFULL;
 } else {
  todo = (devpriv->ai_scan_count * scanlen)
      - devpriv->ai_scan_pos;
  if (todo > PCI230_ADC_FIFOLEVEL_HALFFULL) {
   todo = PCI230_ADC_FIFOLEVEL_HALFFULL;
  }
 }

 if (todo == 0) {
  return;
 }

 fifoamount = 0;
 for (i = 0; i < todo; i++) {
  if (fifoamount == 0) {

   status_fifo = inw(dev->iobase + PCI230_ADCCON);

   if ((status_fifo & PCI230_ADC_FIFO_FULL_LATCHED) != 0) {


    comedi_error(dev, "AI FIFO overrun");
    events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
    break;
   } else if ((status_fifo & PCI230_ADC_FIFO_EMPTY) != 0) {

    break;
   } else if ((status_fifo & PCI230_ADC_FIFO_HALF) != 0) {

    fifoamount = PCI230_ADC_FIFOLEVEL_HALFFULL;
   } else {

    if (devpriv->hwver > 0) {

     fifoamount = inw(dev->iobase
        + PCI230P_ADCFFLEV);
     if (fifoamount == 0) {

      break;
     }
    } else {
     fifoamount = 1;
    }
   }
  }


  if (comedi_buf_put(async, pci230_ai_read(dev)) == 0) {
   events |= COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW;
   comedi_error(dev, "AI buffer overflow");
   break;
  }
  fifoamount--;
  devpriv->ai_scan_pos++;
  if (devpriv->ai_scan_pos == scanlen) {

   devpriv->ai_scan_pos = 0;
   devpriv->ai_scan_count--;
   async->events |= COMEDI_CB_EOS;
  }
 }

 if (!devpriv->ai_continuous && (devpriv->ai_scan_count == 0)) {

  events |= COMEDI_CB_EOA;
 } else {

  events |= COMEDI_CB_BLOCK;
 }
 async->events |= events;

 if ((async->events & (COMEDI_CB_EOA | COMEDI_CB_ERROR |
         COMEDI_CB_OVERFLOW)) != 0) {

  pci230_ai_stop(dev, s);
 } else {

  pci230_ai_update_fifo_trigger_level(dev, s);
 }
}
