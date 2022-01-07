
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int control_state; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAS16M1_CLEAR_INTR ;
 scalar_t__ DAS16M1_CS ;
 scalar_t__ DAS16M1_INTR_CONTROL ;
 scalar_t__ DAS16M1_QUEUE_ADDR ;
 scalar_t__ DAS16M1_QUEUE_DATA ;
 int ETIME ;
 int INTE ;
 int IRQDATA ;
 int PACER_MASK ;
 int Q_CHAN (int ) ;
 int Q_RANGE (int ) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int inb (scalar_t__) ;
 int inw (scalar_t__) ;
 unsigned int munge_sample (int ) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int das16m1_ai_rinsn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int i, n;
 int byte;
 const int timeout = 1000;


 devpriv->control_state &= ~INTE & ~PACER_MASK;
 outb(devpriv->control_state, dev->iobase + DAS16M1_INTR_CONTROL);


 outb(0, dev->iobase + DAS16M1_QUEUE_ADDR);
 byte =
     Q_CHAN(CR_CHAN(insn->chanspec)) | Q_RANGE(CR_RANGE(insn->chanspec));
 outb(byte, dev->iobase + DAS16M1_QUEUE_DATA);

 for (n = 0; n < insn->n; n++) {

  outb(0, dev->iobase + DAS16M1_CLEAR_INTR);

  outb(0, dev->iobase);

  for (i = 0; i < timeout; i++) {
   if (inb(dev->iobase + DAS16M1_CS) & IRQDATA)
    break;
  }
  if (i == timeout) {
   comedi_error(dev, "timeout");
   return -ETIME;
  }
  data[n] = munge_sample(inw(dev->iobase));
 }

 return n;
}
