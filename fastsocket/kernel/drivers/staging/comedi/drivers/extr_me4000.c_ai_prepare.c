
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ start_src; scalar_t__ scan_begin_src; scalar_t__ convert_src; scalar_t__ stop_src; unsigned long chanlist_len; unsigned long stop_arg; scalar_t__ scan_end_src; unsigned long scan_end_arg; } ;
struct TYPE_3__ {int ctrl_reg; int sample_counter_reg; } ;
struct TYPE_4__ {TYPE_1__ ai_context; } ;


 int CALL_PDEBUG (char*) ;
 unsigned long ME4000_AI_CTRL_BIT_CHANNEL_FIFO ;
 unsigned long ME4000_AI_CTRL_BIT_DATA_FIFO ;
 unsigned long ME4000_AI_CTRL_BIT_HF_IRQ ;
 unsigned long ME4000_AI_CTRL_BIT_MODE_0 ;
 unsigned long ME4000_AI_CTRL_BIT_MODE_1 ;
 unsigned long ME4000_AI_CTRL_BIT_MODE_2 ;
 unsigned long ME4000_AI_CTRL_BIT_SC_IRQ ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ TRIG_NONE ;
 scalar_t__ TRIG_TIMER ;
 int ai_write_chanlist (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ;
 int ai_write_timer (struct comedi_device*,unsigned int,unsigned int,unsigned int) ;
 TYPE_2__* info ;
 int me4000_outl (struct comedi_device*,unsigned long,int ) ;

__attribute__((used)) static int ai_prepare(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_cmd *cmd,
        unsigned int init_ticks,
        unsigned int scan_ticks, unsigned int chan_ticks)
{

 unsigned long tmp = 0;

 CALL_PDEBUG("In ai_prepare()\n");


 ai_write_timer(dev, init_ticks, scan_ticks, chan_ticks);


 me4000_outl(dev, tmp, info->ai_context.ctrl_reg);


 if ((cmd->start_src == TRIG_EXT &&
      cmd->scan_begin_src == TRIG_TIMER &&
      cmd->convert_src == TRIG_TIMER) ||
     (cmd->start_src == TRIG_EXT &&
      cmd->scan_begin_src == TRIG_FOLLOW &&
      cmd->convert_src == TRIG_TIMER)) {
  tmp = ME4000_AI_CTRL_BIT_MODE_1 |
      ME4000_AI_CTRL_BIT_CHANNEL_FIFO |
      ME4000_AI_CTRL_BIT_DATA_FIFO;
 } else if (cmd->start_src == TRIG_EXT &&
     cmd->scan_begin_src == TRIG_EXT &&
     cmd->convert_src == TRIG_TIMER) {
  tmp = ME4000_AI_CTRL_BIT_MODE_2 |
      ME4000_AI_CTRL_BIT_CHANNEL_FIFO |
      ME4000_AI_CTRL_BIT_DATA_FIFO;
 } else if (cmd->start_src == TRIG_EXT &&
     cmd->scan_begin_src == TRIG_EXT &&
     cmd->convert_src == TRIG_EXT) {
  tmp = ME4000_AI_CTRL_BIT_MODE_0 |
      ME4000_AI_CTRL_BIT_MODE_1 |
      ME4000_AI_CTRL_BIT_CHANNEL_FIFO |
      ME4000_AI_CTRL_BIT_DATA_FIFO;
 } else {
  tmp = ME4000_AI_CTRL_BIT_MODE_0 |
      ME4000_AI_CTRL_BIT_CHANNEL_FIFO |
      ME4000_AI_CTRL_BIT_DATA_FIFO;
 }


 if (cmd->stop_src == TRIG_COUNT) {
  me4000_outl(dev, cmd->chanlist_len * cmd->stop_arg,
       info->ai_context.sample_counter_reg);
  tmp |= ME4000_AI_CTRL_BIT_HF_IRQ | ME4000_AI_CTRL_BIT_SC_IRQ;
 } else if (cmd->stop_src == TRIG_NONE &&
     cmd->scan_end_src == TRIG_COUNT) {
  me4000_outl(dev, cmd->scan_end_arg,
       info->ai_context.sample_counter_reg);
  tmp |= ME4000_AI_CTRL_BIT_HF_IRQ | ME4000_AI_CTRL_BIT_SC_IRQ;
 } else {
  tmp |= ME4000_AI_CTRL_BIT_HF_IRQ;
 }


 me4000_outl(dev, tmp, info->ai_context.ctrl_reg);


 ai_write_chanlist(dev, s, cmd);

 return 0;
}
