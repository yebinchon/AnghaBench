
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; int stop_arg; int chanlist_len; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {int adc_count; int initial_hw_count; int ai_buffer; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 scalar_t__ DAS16M1_8254_FIRST ;
 int FIFO_SIZE ;
 unsigned int OVRUN ;
 scalar_t__ TRIG_COUNT ;
 int cfc_write_array_to_buffer (struct comedi_subdevice*,int ,int) ;
 int comedi_error (struct comedi_device*,char*) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int das16m1_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_1__* devpriv ;
 int i8254_read (scalar_t__,int ,int) ;
 int insw (scalar_t__,int ,int) ;
 int munge_sample_array (int ,int) ;

__attribute__((used)) static void das16m1_handler(struct comedi_device *dev, unsigned int status)
{
 struct comedi_subdevice *s;
 struct comedi_async *async;
 struct comedi_cmd *cmd;
 u16 num_samples;
 u16 hw_counter;

 s = dev->read_subdev;
 async = s->async;
 async->events = 0;
 cmd = &async->cmd;


 hw_counter = i8254_read(dev->iobase + DAS16M1_8254_FIRST, 0, 1);


 if (devpriv->adc_count == 0 && hw_counter == devpriv->initial_hw_count) {
  num_samples = 0;
 } else {






  num_samples = -hw_counter - devpriv->adc_count;
 }

 if (cmd->stop_src == TRIG_COUNT) {
  if (num_samples > cmd->stop_arg * cmd->chanlist_len)
   num_samples = cmd->stop_arg * cmd->chanlist_len;
 }

 if (num_samples > FIFO_SIZE)
  num_samples = FIFO_SIZE;
 insw(dev->iobase, devpriv->ai_buffer, num_samples);
 munge_sample_array(devpriv->ai_buffer, num_samples);
 cfc_write_array_to_buffer(s, devpriv->ai_buffer,
      num_samples * sizeof(short));
 devpriv->adc_count += num_samples;

 if (cmd->stop_src == TRIG_COUNT) {
  if (devpriv->adc_count >= cmd->stop_arg * cmd->chanlist_len) {
   das16m1_cancel(dev, s);
   async->events |= COMEDI_CB_EOA;
  }
 }



 if (status & OVRUN) {
  das16m1_cancel(dev, s);
  async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
  comedi_error(dev, "fifo overflow");
 }

 comedi_event(dev, s);

}
