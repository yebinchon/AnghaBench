
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {int * inttrig; struct comedi_cmd cmd; } ;
struct TYPE_4__ {unsigned int ao_count; int adc_fifo_bits; int ao_control_bits; scalar_t__ control_status; int ao_buffer; scalar_t__ ao_registers; } ;
struct TYPE_3__ {unsigned int fifo_size; } ;


 scalar_t__ DACDATA ;
 int DACEN ;
 scalar_t__ DAC_CSR ;
 int DAC_EMPTY ;
 int DAC_START ;
 int DAEMI ;
 int DAEMIE ;
 int DAHFI ;
 int DAHFIE ;
 int EINVAL ;
 scalar_t__ INT_ADCFIFO ;
 scalar_t__ TRIG_COUNT ;
 unsigned int cfc_read_array_from_buffer (struct comedi_subdevice*,int ,unsigned int) ;
 TYPE_2__* devpriv ;
 int outsw (scalar_t__,int ,unsigned int) ;
 int outw (int,scalar_t__) ;
 int printk (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int cb_pcidas_ao_inttrig(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned int trig_num)
{
 unsigned int num_bytes, num_points = thisboard->fifo_size;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned long flags;

 if (trig_num != 0)
  return -EINVAL;


 if (cmd->stop_src == TRIG_COUNT && devpriv->ao_count < num_points)
  num_points = devpriv->ao_count;

 num_bytes = cfc_read_array_from_buffer(s, devpriv->ao_buffer,
            num_points * sizeof(short));
 num_points = num_bytes / sizeof(short);

 if (cmd->stop_src == TRIG_COUNT) {
  devpriv->ao_count -= num_points;
 }

 outsw(devpriv->ao_registers + DACDATA, devpriv->ao_buffer, num_bytes);


 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->adc_fifo_bits |= DAEMIE | DAHFIE;




 outw(devpriv->adc_fifo_bits | DAEMI | DAHFI,
      devpriv->control_status + INT_ADCFIFO);


 devpriv->ao_control_bits |= DAC_START | DACEN | DAC_EMPTY;
 outw(devpriv->ao_control_bits, devpriv->control_status + DAC_CSR);



 spin_unlock_irqrestore(&dev->spinlock, flags);

 async->inttrig = ((void*)0);

 return 0;
}
