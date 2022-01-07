
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ convert_src; int convert_arg; scalar_t__ scan_begin_src; int scan_begin_arg; int chanlist_len; int flags; scalar_t__ stop_src; } ;
struct TYPE_2__ {unsigned int adc_byte_count; scalar_t__ timer_mode; } ;


 unsigned int DAS16_DMA_SIZE ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_TIMER ;
 int TRIG_WAKE_EOS ;
 TYPE_1__* devpriv ;
 unsigned int sample_size ;

__attribute__((used)) static unsigned int das16_suggest_transfer_size(struct comedi_device *dev,
      struct comedi_cmd cmd)
{
 unsigned int size;
 unsigned int freq;




 if (devpriv->timer_mode)
  return DAS16_DMA_SIZE;



 if (cmd.convert_src == TRIG_TIMER)
  freq = 1000000000 / cmd.convert_arg;
 else if (cmd.scan_begin_src == TRIG_TIMER)
  freq = (1000000000 / cmd.scan_begin_arg) * cmd.chanlist_len;

 else
  freq = 0xffffffff;

 if (cmd.flags & TRIG_WAKE_EOS) {
  size = sample_size * cmd.chanlist_len;
 } else {

  size = (freq / 3) * sample_size;
 }


 if (size > DAS16_DMA_SIZE)
  size = DAS16_DMA_SIZE - DAS16_DMA_SIZE % sample_size;
 else if (size < sample_size)
  size = sample_size;

 if (cmd.stop_src == TRIG_COUNT && size > devpriv->adc_byte_count)
  size = devpriv->adc_byte_count;

 return size;
}
