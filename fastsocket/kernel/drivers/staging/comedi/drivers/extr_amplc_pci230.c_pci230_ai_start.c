
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {int convert_src; int convert_arg; int scan_begin_src; } ;
struct comedi_async {int inttrig; int events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {scalar_t__ ai_scan_count; unsigned char int_en; unsigned char ier; unsigned short adccon; scalar_t__ iobase1; int isr_spinlock; int ai_continuous; int state; } ;


 int AI_CMD_STARTED ;
 int COMEDI_CB_EOA ;
 int CR_EDGE ;
 int CR_INVERT ;
 unsigned char GAT_CONFIG (int,int ) ;
 int GAT_EXT ;
 int GAT_NOUTNM2 ;
 int GAT_VCC ;
 int OWNER_AICMD ;
 scalar_t__ PCI230_ADCCON ;
 unsigned short PCI230_ADC_TRIG_EXTN ;
 unsigned short PCI230_ADC_TRIG_EXTP ;
 unsigned short PCI230_ADC_TRIG_MASK ;
 unsigned short PCI230_ADC_TRIG_NONE ;
 unsigned short PCI230_ADC_TRIG_Z2CT2 ;
 unsigned char PCI230_INT_ADC ;
 scalar_t__ PCI230_INT_SCE ;
 scalar_t__ PCI230_ZGAT_SCE ;
 int RES_Z2CT2 ;

 int TRIG_FOLLOW ;


 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_1__* devpriv ;
 int outb (unsigned char,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int pci230_ai_inttrig_convert ;
 int pci230_ai_inttrig_scan_begin ;
 int pci230_ai_stop (struct comedi_device*,struct comedi_subdevice*) ;
 int pci230_ai_update_fifo_trigger_level (struct comedi_device*,struct comedi_subdevice*) ;
 int put_one_resource (struct comedi_device*,int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pci230_ai_start(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 unsigned long irqflags;
 unsigned short conv;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;

 set_bit(AI_CMD_STARTED, &devpriv->state);
 if (!devpriv->ai_continuous && (devpriv->ai_scan_count == 0)) {

  async->events |= COMEDI_CB_EOA;
  pci230_ai_stop(dev, s);
  comedi_event(dev, s);
 } else {

  spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);
  devpriv->int_en |= PCI230_INT_ADC;
  devpriv->ier |= PCI230_INT_ADC;
  outb(devpriv->ier, devpriv->iobase1 + PCI230_INT_SCE);
  spin_unlock_irqrestore(&devpriv->isr_spinlock, irqflags);



  switch (cmd->convert_src) {
  default:
   conv = PCI230_ADC_TRIG_NONE;
   break;
  case 128:

   conv = PCI230_ADC_TRIG_Z2CT2;
   break;
  case 130:
   if ((cmd->convert_arg & CR_EDGE) != 0) {
    if ((cmd->convert_arg & CR_INVERT) == 0) {

     conv = PCI230_ADC_TRIG_EXTP;
    } else {

     conv = PCI230_ADC_TRIG_EXTN;
    }
   } else {

    if (cmd->convert_arg != 0) {

     conv = PCI230_ADC_TRIG_EXTP;
    } else {

     conv = PCI230_ADC_TRIG_EXTN;
    }
   }
   break;
  case 129:


   conv = PCI230_ADC_TRIG_Z2CT2;
   break;
  }
  devpriv->adccon = (devpriv->adccon & ~PCI230_ADC_TRIG_MASK)
      | conv;
  outw(devpriv->adccon, dev->iobase + PCI230_ADCCON);
  if (cmd->convert_src == 129) {
   async->inttrig = pci230_ai_inttrig_convert;
  }


  pci230_ai_update_fifo_trigger_level(dev, s);
  if (cmd->convert_src == 128) {

   unsigned char zgat;

   if (cmd->scan_begin_src != TRIG_FOLLOW) {


    zgat = GAT_CONFIG(2, GAT_NOUTNM2);
   } else {


    zgat = GAT_CONFIG(2, GAT_VCC);
   }
   outb(zgat, devpriv->iobase1 + PCI230_ZGAT_SCE);
   if (cmd->scan_begin_src != TRIG_FOLLOW) {

    switch (cmd->scan_begin_src) {
    default:
     zgat = GAT_CONFIG(0, GAT_VCC);
     break;
    case 130:
     zgat = GAT_CONFIG(0, GAT_EXT);
     break;
    case 128:





     zgat = GAT_CONFIG(0, GAT_NOUTNM2);
     break;
    case 129:





     zgat = GAT_CONFIG(0, GAT_VCC);
     break;
    }
    outb(zgat, devpriv->iobase1 + PCI230_ZGAT_SCE);
    switch (cmd->scan_begin_src) {
    case 128:


     zgat = GAT_CONFIG(1, GAT_VCC);
     outb(zgat, devpriv->iobase1
          + PCI230_ZGAT_SCE);
     break;
    case 129:
     async->inttrig =
         pci230_ai_inttrig_scan_begin;
     break;
    }
   }
  } else if (cmd->convert_src != 129) {

   put_one_resource(dev, RES_Z2CT2, OWNER_AICMD);
  }
 }
}
