
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {scalar_t__ start_src; scalar_t__ scan_begin_src; int convert_src; scalar_t__ scan_end_src; scalar_t__ scan_end_arg; scalar_t__ chanlist_len; scalar_t__ convert_arg; int flags; scalar_t__ stop_src; int stop_arg; int chanlist; } ;
struct TYPE_6__ {unsigned int ai_n_chan; scalar_t__* ai_chanlist; int ai_dma; int ai_flags; int ai_data_len; int ai_scans; int ai_neverending; int ai_eos; int* dmabytestomove; int dma_runs_to_end; int* hwdmasize; unsigned int last_dma_run; int mode_reg_int; int * hwdmaptr; scalar_t__ dma; scalar_t__ next_dma_buf; scalar_t__ ai_poll_ptr; scalar_t__ ai_act_scan; int ai_data; scalar_t__ use_ext_trg; } ;
struct TYPE_5__ {scalar_t__ ai_ns_min; int i8254_osc_base; } ;
struct TYPE_4__ {int prealloc_bufsz; scalar_t__ cur_chan; int prealloc_buf; struct comedi_cmd cmd; } ;


 int DMA_MODE_READ ;
 int EINVAL ;
 scalar_t__ MAX_CHANLIST_LEN ;
 scalar_t__ PCL812_MODE ;
 scalar_t__ TRIG_COUNT ;
 int TRIG_EXT ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ TRIG_NOW ;
 int TRIG_ROUND_MASK ;

 int TRIG_WAKE_EOS ;
 unsigned int claim_dma_lock () ;
 int clear_dma_ff (scalar_t__) ;
 TYPE_3__* devpriv ;
 int enable_dma (scalar_t__) ;
 int i8253_cascade_ns_to_timer (int ,unsigned int*,unsigned int*,scalar_t__*,int) ;
 int memcpy (scalar_t__*,int ,int) ;
 int outb (int,scalar_t__) ;
 int printk (char*,...) ;
 int release_dma_lock (unsigned int) ;
 int set_dma_addr (scalar_t__,int ) ;
 int set_dma_count (scalar_t__,unsigned int) ;
 int set_dma_mode (scalar_t__,int ) ;
 int setup_range_channel (struct comedi_device*,struct comedi_subdevice*,scalar_t__,int) ;
 int start_pacer (struct comedi_device*,int,unsigned int,unsigned int) ;
 TYPE_2__* this_board ;

__attribute__((used)) static int pcl812_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned int divisor1 = 0, divisor2 = 0, i, dma_flags, bytes;
 struct comedi_cmd *cmd = &s->async->cmd;





 if (cmd->start_src != TRIG_NOW)
  return -EINVAL;
 if (cmd->scan_begin_src != TRIG_FOLLOW)
  return -EINVAL;
 if (devpriv->use_ext_trg) {
  if (cmd->convert_src != TRIG_EXT)
   return -EINVAL;
 } else {
  if (cmd->convert_src != 128)
   return -EINVAL;
 }
 if (cmd->scan_end_src != TRIG_COUNT)
  return -EINVAL;
 if (cmd->scan_end_arg != cmd->chanlist_len)
  return -EINVAL;
 if (cmd->chanlist_len > MAX_CHANLIST_LEN)
  return -EINVAL;

 if (cmd->convert_src == 128) {
  if (cmd->convert_arg < this_board->ai_ns_min)
   cmd->convert_arg = this_board->ai_ns_min;
  i8253_cascade_ns_to_timer(this_board->i8254_osc_base,
       &divisor1, &divisor2,
       &cmd->convert_arg,
       cmd->flags & TRIG_ROUND_MASK);
 }

 start_pacer(dev, -1, 0, 0);

 devpriv->ai_n_chan = cmd->chanlist_len;
 memcpy(devpriv->ai_chanlist, cmd->chanlist,
        sizeof(unsigned int) * cmd->scan_end_arg);
 setup_range_channel(dev, s, devpriv->ai_chanlist[0], 1);

 if (devpriv->dma) {
  devpriv->ai_dma = 1;
  for (i = 1; i < devpriv->ai_n_chan; i++)
   if (devpriv->ai_chanlist[0] != devpriv->ai_chanlist[i]) {
    devpriv->ai_dma = 0;
    break;
   }
 } else
  devpriv->ai_dma = 0;

 devpriv->ai_flags = cmd->flags;
 devpriv->ai_data_len = s->async->prealloc_bufsz;
 devpriv->ai_data = s->async->prealloc_buf;
 if (cmd->stop_src == TRIG_COUNT) {
  devpriv->ai_scans = cmd->stop_arg;
  devpriv->ai_neverending = 0;
 } else {
  devpriv->ai_scans = 0;
  devpriv->ai_neverending = 1;
 }

 devpriv->ai_act_scan = 0;
 devpriv->ai_poll_ptr = 0;
 s->async->cur_chan = 0;

 if ((devpriv->ai_flags & TRIG_WAKE_EOS)) {
  devpriv->ai_eos = 1;
  if (devpriv->ai_n_chan == 1)
   devpriv->ai_dma = 0;
 }

 if (devpriv->ai_dma) {
  if (devpriv->ai_eos) {
   devpriv->dmabytestomove[0] =
       devpriv->ai_n_chan * sizeof(short);
   devpriv->dmabytestomove[1] =
       devpriv->ai_n_chan * sizeof(short);
   devpriv->dma_runs_to_end = 1;
  } else {
   devpriv->dmabytestomove[0] = devpriv->hwdmasize[0];
   devpriv->dmabytestomove[1] = devpriv->hwdmasize[1];
   if (devpriv->ai_data_len < devpriv->hwdmasize[0])
    devpriv->dmabytestomove[0] =
        devpriv->ai_data_len;
   if (devpriv->ai_data_len < devpriv->hwdmasize[1])
    devpriv->dmabytestomove[1] =
        devpriv->ai_data_len;
   if (devpriv->ai_neverending) {
    devpriv->dma_runs_to_end = 1;
   } else {
    bytes = devpriv->ai_n_chan * devpriv->ai_scans * sizeof(short);
    devpriv->dma_runs_to_end = bytes / devpriv->dmabytestomove[0];
    devpriv->last_dma_run = bytes % devpriv->dmabytestomove[0];
    if (devpriv->dma_runs_to_end == 0)
     devpriv->dmabytestomove[0] =
         devpriv->last_dma_run;
    devpriv->dma_runs_to_end--;
   }
  }
  if (devpriv->dmabytestomove[0] > devpriv->hwdmasize[0]) {
   devpriv->dmabytestomove[0] = devpriv->hwdmasize[0];
   devpriv->ai_eos = 0;
  }
  if (devpriv->dmabytestomove[1] > devpriv->hwdmasize[1]) {
   devpriv->dmabytestomove[1] = devpriv->hwdmasize[1];
   devpriv->ai_eos = 0;
  }
  devpriv->next_dma_buf = 0;
  set_dma_mode(devpriv->dma, DMA_MODE_READ);
  dma_flags = claim_dma_lock();
  clear_dma_ff(devpriv->dma);
  set_dma_addr(devpriv->dma, devpriv->hwdmaptr[0]);
  set_dma_count(devpriv->dma, devpriv->dmabytestomove[0]);
  release_dma_lock(dma_flags);
  enable_dma(devpriv->dma);







 }

 switch (cmd->convert_src) {
 case 128:
  start_pacer(dev, 1, divisor1, divisor2);
  break;
 }

 if (devpriv->ai_dma) {
  outb(devpriv->mode_reg_int | 2, dev->iobase + PCL812_MODE);
 } else {
  outb(devpriv->mode_reg_int | 6, dev->iobase + PCL812_MODE);
 }





 return 0;
}
