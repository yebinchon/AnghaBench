
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {scalar_t__ convert_src; int convert_arg; } ;


 scalar_t__ TRIG_TIMER ;
 unsigned int dma_buffer_size ;
 unsigned int sample_size ;

__attribute__((used)) static unsigned int labpc_suggest_transfer_size(struct comedi_cmd cmd)
{
 unsigned int size;
 unsigned int freq;

 if (cmd.convert_src == TRIG_TIMER)
  freq = 1000000000 / cmd.convert_arg;

 else
  freq = 0xffffffff;


 size = (freq / 3) * sample_size;


 if (size > dma_buffer_size)
  size = dma_buffer_size - dma_buffer_size % sample_size;
 else if (size < sample_size)
  size = sample_size;

 return size;
}
