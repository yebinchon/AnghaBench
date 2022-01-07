
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {int scan_begin_src; int convert_src; unsigned int convert_arg; unsigned int scan_begin_arg; unsigned int chanlist_len; scalar_t__ stop_src; int const stop_arg; } ;


 unsigned int DMA_BUF_SIZE ;
 scalar_t__ TRIG_COUNT ;



__attribute__((used)) static unsigned int suggest_transfer_size(struct comedi_cmd *cmd)
{
 unsigned int size = DMA_BUF_SIZE;
 static const int sample_size = 2;
 unsigned int fill_time = 300000000;
 unsigned int max_size;


 switch (cmd->scan_begin_src) {
 case 129:
  if (cmd->convert_src == 128)
   size = (fill_time / cmd->convert_arg) * sample_size;
  break;
 case 128:
  size = (fill_time / (cmd->scan_begin_arg * cmd->chanlist_len)) *
      sample_size;
  break;
 default:
  size = DMA_BUF_SIZE;
  break;
 }


 max_size = DMA_BUF_SIZE;

 if (cmd->stop_src == TRIG_COUNT &&
     cmd->stop_arg * cmd->chanlist_len * sample_size < max_size)
  max_size = cmd->stop_arg * cmd->chanlist_len * sample_size;

 if (size > max_size)
  size = max_size;
 if (size < sample_size)
  size = sample_size;

 return size;
}
