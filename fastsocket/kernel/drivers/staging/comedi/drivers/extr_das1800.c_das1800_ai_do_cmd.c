
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; int irq; } ;
struct comedi_cmd {int flags; scalar_t__ stop_src; int stop_arg; int chanlist_len; int convert_arg; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_2__ {int irq_dma_bits; int dma_bits; int count; } ;


 int BMDE ;
 int CVEN ;
 scalar_t__ DAS1800_BURST_LENGTH ;
 scalar_t__ DAS1800_BURST_RATE ;
 scalar_t__ DAS1800_CONTROL_A ;
 scalar_t__ DAS1800_CONTROL_B ;
 scalar_t__ DAS1800_CONTROL_C ;
 scalar_t__ DAS1800_STATUS ;
 int DMA_ENABLED ;
 int FIMD ;
 scalar_t__ TRIG_COUNT ;
 int TRIG_RT ;
 int TRIG_WAKE_EOS ;
 int comedi_error (struct comedi_device*,char*) ;
 int control_a_bits (struct comedi_cmd) ;
 int control_c_bits (struct comedi_cmd) ;
 int das1800_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;
 int program_chanlist (struct comedi_device*,struct comedi_cmd) ;
 int setup_counters (struct comedi_device*,struct comedi_cmd) ;
 int setup_dma (struct comedi_device*,struct comedi_cmd) ;

__attribute__((used)) static int das1800_ai_do_cmd(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 int ret;
 int control_a, control_c;
 struct comedi_async *async = s->async;
 struct comedi_cmd cmd = async->cmd;

 if (!dev->irq) {
  comedi_error(dev,
        "no irq assigned for das-1800, cannot do hardware conversions");
  return -1;
 }



 if (cmd.flags & (TRIG_WAKE_EOS | TRIG_RT)) {
  devpriv->irq_dma_bits &= ~DMA_ENABLED;
 } else {
  devpriv->irq_dma_bits |= devpriv->dma_bits;
 }

 if (cmd.flags & TRIG_WAKE_EOS) {

  devpriv->irq_dma_bits &= ~FIMD;
 } else {

  devpriv->irq_dma_bits |= FIMD;
 }

 if (cmd.stop_src == TRIG_COUNT) {
  devpriv->count = cmd.stop_arg * cmd.chanlist_len;
 }

 das1800_cancel(dev, s);


 control_a = control_a_bits(cmd);
 control_c = control_c_bits(cmd);


 program_chanlist(dev, cmd);
 ret = setup_counters(dev, cmd);
 if (ret < 0) {
  comedi_error(dev, "Error setting up counters");
  return ret;
 }
 setup_dma(dev, cmd);
 outb(control_c, dev->iobase + DAS1800_CONTROL_C);

 if (control_c & BMDE) {

  outb(cmd.convert_arg / 1000 - 1,
       dev->iobase + DAS1800_BURST_RATE);
  outb(cmd.chanlist_len - 1, dev->iobase + DAS1800_BURST_LENGTH);
 }
 outb(devpriv->irq_dma_bits, dev->iobase + DAS1800_CONTROL_B);
 outb(control_a, dev->iobase + DAS1800_CONTROL_A);
 outb(CVEN, dev->iobase + DAS1800_STATUS);

 return 0;
}
