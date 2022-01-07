
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_2__ {int ai_fifo_segment_length; int ai_count; scalar_t__ main_iobase; } ;


 scalar_t__ ADC_FIFO_REG ;
 scalar_t__ ADC_READ_PNTR_REG ;
 scalar_t__ ADC_WRITE_PNTR_REG ;
 int DEBUG_PRINT (char*,int,...) ;
 scalar_t__ PREPOST_REG ;
 scalar_t__ TRIG_COUNT ;
 int adc_upper_read_ptr_code (int) ;
 int adc_upper_write_ptr_code (int) ;
 int cfc_write_to_buffer (struct comedi_subdevice*,int) ;
 int printk (char*) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int readw (scalar_t__) ;

__attribute__((used)) static void pio_drain_ai_fifo_16(struct comedi_device *dev)
{
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int i;
 uint16_t prepost_bits;
 int read_segment, read_index, write_segment, write_index;
 int num_samples;

 do {

  read_index =
      readw(priv(dev)->main_iobase + ADC_READ_PNTR_REG) & 0x7fff;
  write_index =
      readw(priv(dev)->main_iobase + ADC_WRITE_PNTR_REG) & 0x7fff;




  prepost_bits = readw(priv(dev)->main_iobase + PREPOST_REG);



  read_segment = adc_upper_read_ptr_code(prepost_bits);
  write_segment = adc_upper_write_ptr_code(prepost_bits);

  DEBUG_PRINT(" rd seg %i, wrt seg %i, rd idx %i, wrt idx %i\n",
       read_segment, write_segment, read_index,
       write_index);

  if (read_segment != write_segment)
   num_samples =
       priv(dev)->ai_fifo_segment_length - read_index;
  else
   num_samples = write_index - read_index;

  if (cmd->stop_src == TRIG_COUNT) {
   if (priv(dev)->ai_count == 0)
    break;
   if (num_samples > priv(dev)->ai_count) {
    num_samples = priv(dev)->ai_count;
   }
   priv(dev)->ai_count -= num_samples;
  }

  if (num_samples < 0) {
   printk(" cb_pcidas64: bug! num_samples < 0\n");
   break;
  }

  DEBUG_PRINT(" read %i samples from fifo\n", num_samples);

  for (i = 0; i < num_samples; i++) {
   cfc_write_to_buffer(s,
         readw(priv(dev)->main_iobase +
        ADC_FIFO_REG));
  }

 } while (read_segment != write_segment);
}
