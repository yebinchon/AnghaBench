
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int minor; } ;
struct comedi_cmd {int flags; int chanlist_len; int scan_end_arg; scalar_t__ start_src; scalar_t__ stop_src; scalar_t__ convert_src; scalar_t__ scan_begin_src; unsigned int convert_arg; scalar_t__ scan_begin_arg; scalar_t__ stop_arg; int start_arg; int chanlist; } ;
struct TYPE_6__ {int ai_flags; int ai_n_chan; int ai_n_scanlen; int ai_timer2; int ai_add_front; int ai_add_back; int ai_maskerr; int ai_neverending; int usessh; int usedma; unsigned int softsshdelay; int ai_n_realscanlen; int ai_do; int AdControlReg; int AdFunctionReg; scalar_t__ ai_buf_ptr; scalar_t__ ai_act_dmapos; scalar_t__ ai_act_scan; scalar_t__ ai_timer1; int ai_divisor2; int ai_divisor1; scalar_t__ useeoshandle; int ai_chanlist; scalar_t__ master; int ai12_startstop; scalar_t__ ai_scans; int ai_inttrig_start; int ai_data_len; int ai_data; } ;
struct TYPE_5__ {unsigned int ai_ns_min; } ;
struct TYPE_4__ {scalar_t__ cur_chan; int inttrig; int prealloc_bufsz; int prealloc_buf; struct comedi_cmd cmd; } ;


 int AdFunction_PDTrg ;
 int AdFunction_PETrg ;
 int DPRINTK (char*,...) ;
 int EINVAL ;
 int EIO ;
 scalar_t__ PCI9118_ADCNTRL ;
 scalar_t__ PCI9118_ADFUNC ;
 scalar_t__ PCI9118_ADSTAT ;
 scalar_t__ PCI9118_DELFIFO ;
 scalar_t__ PCI9118_INTSRC ;
 int START_AI_EXT ;
 int START_AI_INT ;
 int STOP_AI_EXT ;
 int STOP_AI_INT ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ TRIG_INT ;
 scalar_t__ TRIG_NONE ;
 scalar_t__ TRIG_NOW ;
 scalar_t__ TRIG_TIMER ;
 int TRIG_WAKE_EOS ;
 int check_channel_list (struct comedi_device*,struct comedi_subdevice*,int,int ,int,int) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_3__* devpriv ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int pci9118_ai_docmd_dma (struct comedi_device*,struct comedi_subdevice*) ;
 int pci9118_ai_docmd_sampl (struct comedi_device*,struct comedi_subdevice*) ;
 int pci9118_ai_inttrig ;
 int pci9118_calc_divisors (int,struct comedi_device*,struct comedi_subdevice*,scalar_t__*,int*,int,int,int *,int *,int,int) ;
 int setup_channel_list (struct comedi_device*,struct comedi_subdevice*,int,int ,int ,int,int,int,scalar_t__) ;
 int start_pacer (struct comedi_device*,int,int ,int ) ;
 TYPE_2__* this_board ;
 int udelay (int) ;

__attribute__((used)) static int pci9118_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int addchans = 0;
 int ret = 0;

 DPRINTK("adl_pci9118 EDBG: BGN: pci9118_ai_cmd(%d,)\n", dev->minor);
 devpriv->ai12_startstop = 0;
 devpriv->ai_flags = cmd->flags;
 devpriv->ai_n_chan = cmd->chanlist_len;
 devpriv->ai_n_scanlen = cmd->scan_end_arg;
 devpriv->ai_chanlist = cmd->chanlist;
 devpriv->ai_data = s->async->prealloc_buf;
 devpriv->ai_data_len = s->async->prealloc_bufsz;
 devpriv->ai_timer1 = 0;
 devpriv->ai_timer2 = 0;
 devpriv->ai_add_front = 0;
 devpriv->ai_add_back = 0;
 devpriv->ai_maskerr = 0x10e;


 if (cmd->start_src == TRIG_EXT)
  devpriv->ai12_startstop |= START_AI_EXT;
 if (cmd->stop_src == TRIG_EXT) {
  devpriv->ai_neverending = 1;
  devpriv->ai12_startstop |= STOP_AI_EXT;
 }
 if (cmd->start_src == TRIG_INT) {
  devpriv->ai12_startstop |= START_AI_INT;
  devpriv->ai_inttrig_start = cmd->start_arg;
  s->async->inttrig = pci9118_ai_inttrig;
 }






 if (cmd->stop_src == TRIG_NONE)
  devpriv->ai_neverending = 1;
 if (cmd->stop_src == TRIG_COUNT) {
  devpriv->ai_scans = cmd->stop_arg;
  devpriv->ai_neverending = 0;
 } else {
  devpriv->ai_scans = 0;
 }


 if (cmd->convert_src == TRIG_NOW) {
  devpriv->usessh = 1;
 }
 else {
  devpriv->usessh = 0;
 }

 DPRINTK("1 neverending=%d scans=%u usessh=%d ai_startstop=0x%2x\n",
  devpriv->ai_neverending, devpriv->ai_scans, devpriv->usessh,
  devpriv->ai12_startstop);


 devpriv->ai_add_front = 0;
 devpriv->ai_add_back = 0;
 devpriv->useeoshandle = 0;
 if (devpriv->master) {
  devpriv->usedma = 1;
  if ((cmd->flags & TRIG_WAKE_EOS) &&
      (devpriv->ai_n_scanlen == 1)) {
   if (cmd->convert_src == TRIG_NOW) {
    devpriv->ai_add_back = 1;
   }
   if (cmd->convert_src == TRIG_TIMER) {
    devpriv->usedma = 0;
   }
  }
  if ((cmd->flags & TRIG_WAKE_EOS) &&
      (devpriv->ai_n_scanlen & 1) &&
      (devpriv->ai_n_scanlen > 1)) {
   if (cmd->scan_begin_src == TRIG_FOLLOW) {

    devpriv->usedma = 0;
   } else {
    devpriv->ai_add_back = 1;
   }
  }
 } else {
  devpriv->usedma = 0;
 }


 if (devpriv->usessh && devpriv->softsshdelay) {
  devpriv->ai_add_front = 2;
  if ((devpriv->usedma == 1) && (devpriv->ai_add_back == 1)) {
   devpriv->ai_add_front++;
   devpriv->ai_add_back = 0;
  }
  if (cmd->convert_arg < this_board->ai_ns_min)
   cmd->convert_arg = this_board->ai_ns_min;
  addchans = devpriv->softsshdelay / cmd->convert_arg;
  if (devpriv->softsshdelay % cmd->convert_arg)
   addchans++;
  if (addchans > (devpriv->ai_add_front - 1)) {
   devpriv->ai_add_front = addchans + 1;
   if (devpriv->usedma == 1)
    if ((devpriv->ai_add_front +
         devpriv->ai_n_chan +
         devpriv->ai_add_back) & 1)
     devpriv->ai_add_front++;
  }
 }

 devpriv->ai_n_realscanlen =
     (devpriv->ai_add_front + devpriv->ai_n_chan +
      devpriv->ai_add_back) * (devpriv->ai_n_scanlen /
          devpriv->ai_n_chan);

 DPRINTK("2 usedma=%d realscan=%d af=%u n_chan=%d ab=%d n_scanlen=%d\n",
  devpriv->usedma,
  devpriv->ai_n_realscanlen, devpriv->ai_add_front,
  devpriv->ai_n_chan, devpriv->ai_add_back,
  devpriv->ai_n_scanlen);


 if (!check_channel_list(dev, s, devpriv->ai_n_chan,
    devpriv->ai_chanlist, devpriv->ai_add_front,
    devpriv->ai_add_back))
  return -EINVAL;
 if (!setup_channel_list(dev, s, devpriv->ai_n_chan,
    devpriv->ai_chanlist, 0, devpriv->ai_add_front,
    devpriv->ai_add_back, devpriv->usedma,
    devpriv->useeoshandle))
  return -EINVAL;



 if (((cmd->scan_begin_src == TRIG_FOLLOW) || (cmd->scan_begin_src == TRIG_EXT) || (cmd->scan_begin_src == TRIG_INT)) && (cmd->convert_src == TRIG_TIMER)) {
  if (cmd->scan_begin_src == TRIG_EXT) {
   devpriv->ai_do = 4;
  } else {
   devpriv->ai_do = 1;
  }
  pci9118_calc_divisors(devpriv->ai_do, dev, s,
          &cmd->scan_begin_arg, &cmd->convert_arg,
          devpriv->ai_flags,
          devpriv->ai_n_realscanlen,
          &devpriv->ai_divisor1,
          &devpriv->ai_divisor2, devpriv->usessh,
          devpriv->ai_add_front);
  devpriv->ai_timer2 = cmd->convert_arg;
 }

 if ((cmd->scan_begin_src == TRIG_TIMER) && ((cmd->convert_src == TRIG_TIMER) || (cmd->convert_src == TRIG_NOW))) {
  if (!devpriv->usedma) {
   comedi_error(dev,
         "cmd->scan_begin_src=TRIG_TIMER works only with bus mastering!");
   return -EIO;
  }

  devpriv->ai_do = 2;
  pci9118_calc_divisors(devpriv->ai_do, dev, s,
          &cmd->scan_begin_arg, &cmd->convert_arg,
          devpriv->ai_flags,
          devpriv->ai_n_realscanlen,
          &devpriv->ai_divisor1,
          &devpriv->ai_divisor2, devpriv->usessh,
          devpriv->ai_add_front);
  devpriv->ai_timer1 = cmd->scan_begin_arg;
  devpriv->ai_timer2 = cmd->convert_arg;
 }

 if ((cmd->scan_begin_src == TRIG_FOLLOW)
     && (cmd->convert_src == TRIG_EXT)) {
  devpriv->ai_do = 3;
 }

 start_pacer(dev, -1, 0, 0);

 devpriv->AdControlReg = 0;
 outl(devpriv->AdControlReg, dev->iobase + PCI9118_ADCNTRL);
 devpriv->AdFunctionReg = AdFunction_PDTrg | AdFunction_PETrg;
 outl(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);
 udelay(1);
 outl(0, dev->iobase + PCI9118_DELFIFO);
 inl(dev->iobase + PCI9118_ADSTAT);
 inl(dev->iobase + PCI9118_INTSRC);

 devpriv->ai_act_scan = 0;
 devpriv->ai_act_dmapos = 0;
 s->async->cur_chan = 0;
 devpriv->ai_buf_ptr = 0;

 if (devpriv->usedma)
  ret = pci9118_ai_docmd_dma(dev, s);
 else
  ret = pci9118_ai_docmd_sampl(dev, s);

 DPRINTK("adl_pci9118 EDBG: END: pci9118_ai_cmd()\n");
 return ret;
}
