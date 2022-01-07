
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ni_gpct_device {int variant; } ;
struct ni_gpct {TYPE_1__* mite_chan; int counter_index; struct ni_gpct_device* counter_dev; } ;
struct comedi_cmd {int start_src; int start_arg; } ;
struct comedi_async {int * inttrig; int prealloc_bufsz; struct comedi_cmd cmd; } ;
struct TYPE_3__ {int dir; } ;


 int BUG () ;
 int COMEDI_INPUT ;
 int Gi_Save_Trace_Bit ;
 int NITIO_Gi_Command_Reg (int ) ;
 int NI_GPCT_ARM_IMMEDIATE ;




 int comedi_buf_write_alloc (struct comedi_async*,int ) ;
 int mite_dma_arm (TYPE_1__*) ;
 int mite_prep_dma (TYPE_1__*,int,int) ;



 int ni_tio_arm (struct ni_gpct*,int,int ) ;
 int ni_tio_configure_dma (struct ni_gpct*,int,int) ;
 int ni_tio_input_inttrig ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int ) ;

__attribute__((used)) static int ni_tio_input_cmd(struct ni_gpct *counter, struct comedi_async *async)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 struct comedi_cmd *cmd = &async->cmd;
 int retval = 0;


 comedi_buf_write_alloc(async, async->prealloc_bufsz);
 counter->mite_chan->dir = COMEDI_INPUT;
 switch (counter_dev->variant) {
 case 128:
 case 130:
  mite_prep_dma(counter->mite_chan, 32, 32);
  break;
 case 129:
  mite_prep_dma(counter->mite_chan, 16, 32);
  break;
 default:
  BUG();
  break;
 }
 ni_tio_set_bits(counter, NITIO_Gi_Command_Reg(counter->counter_index),
   Gi_Save_Trace_Bit, 0);
 ni_tio_configure_dma(counter, 1, 1);
 switch (cmd->start_src) {
 case 132:
  async->inttrig = ((void*)0);
  mite_dma_arm(counter->mite_chan);
  retval = ni_tio_arm(counter, 1, NI_GPCT_ARM_IMMEDIATE);
  break;
 case 133:
  async->inttrig = &ni_tio_input_inttrig;
  break;
 case 134:
  async->inttrig = ((void*)0);
  mite_dma_arm(counter->mite_chan);
  retval = ni_tio_arm(counter, 1, cmd->start_arg);
 case 131:
  async->inttrig = ((void*)0);
  mite_dma_arm(counter->mite_chan);
  break;
 default:
  BUG();
  break;
 }
 return retval;
}
