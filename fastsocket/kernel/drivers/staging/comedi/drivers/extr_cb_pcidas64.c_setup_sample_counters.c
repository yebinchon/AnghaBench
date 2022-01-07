
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ stop_src; int stop_arg; int chanlist_len; } ;
struct TYPE_2__ {int ai_count; scalar_t__ main_iobase; } ;


 scalar_t__ ADC_COUNT_LOWER_REG ;
 scalar_t__ ADC_COUNT_UPPER_REG ;
 scalar_t__ TRIG_COUNT ;
 TYPE_1__* priv (struct comedi_device*) ;
 scalar_t__ use_hw_sample_counter (struct comedi_cmd*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void setup_sample_counters(struct comedi_device *dev,
      struct comedi_cmd *cmd)
{
 if (cmd->stop_src == TRIG_COUNT) {

  priv(dev)->ai_count = cmd->stop_arg * cmd->chanlist_len;
 }

 if (use_hw_sample_counter(cmd)) {
  writew(cmd->stop_arg & 0xffff,
         priv(dev)->main_iobase + ADC_COUNT_LOWER_REG);
  writew((cmd->stop_arg >> 16) & 0xff,
         priv(dev)->main_iobase + ADC_COUNT_UPPER_REG);
 } else {
  writew(1, priv(dev)->main_iobase + ADC_COUNT_LOWER_REG);
 }
}
