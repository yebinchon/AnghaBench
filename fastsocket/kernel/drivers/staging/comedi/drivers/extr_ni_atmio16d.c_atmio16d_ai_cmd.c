
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {int chanlist_len; int scan_end_arg; int convert_arg; unsigned int stop_arg; int scan_begin_arg; int * chanlist; } ;
struct TYPE_4__ {int com_reg_1_state; int com_reg_2_state; } ;
struct TYPE_3__ {scalar_t__ cur_chan; struct comedi_cmd cmd; } ;


 scalar_t__ AD_CLEAR_REG ;
 scalar_t__ AM9513A_COM_REG ;
 scalar_t__ AM9513A_DATA_REG ;
 unsigned int CLOCK_100_KHZ ;
 unsigned int CLOCK_10_KHZ ;
 unsigned int CLOCK_1_KHZ ;
 unsigned int CLOCK_1_MHZ ;
 int COMREG1_1632CNT ;
 int COMREG1_CONVINTEN ;
 int COMREG1_DAQEN ;
 int COMREG1_SCANEN ;
 int COMREG2_INTEN ;
 int COMREG2_SCN2 ;
 scalar_t__ COM_REG_1 ;
 scalar_t__ COM_REG_2 ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ INT2CLR_REG ;
 scalar_t__ MUX_CNTR_REG ;
 scalar_t__ MUX_GAIN_REG ;
 scalar_t__ START_DAQ_REG ;
 TYPE_2__* devpriv ;
 int outw (int,scalar_t__) ;
 int printk (char*) ;
 int reset_counters (struct comedi_device*) ;

__attribute__((used)) static int atmio16d_ai_cmd(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int timer, base_clock;
 unsigned int sample_count, tmp, chan, gain;
 int i;






 reset_counters(dev);
 s->async->cur_chan = 0;


 if (cmd->chanlist_len < 2) {
  devpriv->com_reg_1_state &= ~COMREG1_SCANEN;
  outw(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
 } else {
  devpriv->com_reg_1_state |= COMREG1_SCANEN;
  devpriv->com_reg_2_state |= COMREG2_SCN2;
  outw(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
  outw(devpriv->com_reg_2_state, dev->iobase + COM_REG_2);
 }


 for (i = 0; i < cmd->chanlist_len; ++i) {
  chan = CR_CHAN(cmd->chanlist[i]);
  gain = CR_RANGE(cmd->chanlist[i]);
  outw(i, dev->iobase + MUX_CNTR_REG);
  tmp = chan | (gain << 6);
  if (i == cmd->scan_end_arg - 1)
   tmp |= 0x0010;
  outw(tmp, dev->iobase + MUX_GAIN_REG);
 }




 if (cmd->convert_arg < 65536000) {
  base_clock = CLOCK_1_MHZ;
  timer = cmd->convert_arg / 1000;
 } else if (cmd->convert_arg < 655360000) {
  base_clock = CLOCK_100_KHZ;
  timer = cmd->convert_arg / 10000;
 } else if (cmd->convert_arg <= 0xffffffff ) {
  base_clock = CLOCK_10_KHZ;
  timer = cmd->convert_arg / 100000;
 } else if (cmd->convert_arg <= 0xffffffff ) {
  base_clock = CLOCK_1_KHZ;
  timer = cmd->convert_arg / 1000000;
 }
 outw(0xFF03, dev->iobase + AM9513A_COM_REG);
 outw(base_clock, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF0B, dev->iobase + AM9513A_COM_REG);
 outw(0x2, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF44, dev->iobase + AM9513A_COM_REG);
 outw(0xFFF3, dev->iobase + AM9513A_COM_REG);
 outw(timer, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF24, dev->iobase + AM9513A_COM_REG);



 sample_count = cmd->stop_arg * cmd->scan_end_arg;
 outw(0xFF04, dev->iobase + AM9513A_COM_REG);
 outw(0x1025, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF0C, dev->iobase + AM9513A_COM_REG);
 if (sample_count < 65536) {

  outw(sample_count, dev->iobase + AM9513A_DATA_REG);
  outw(0xFF48, dev->iobase + AM9513A_COM_REG);
  outw(0xFFF4, dev->iobase + AM9513A_COM_REG);
  outw(0xFF28, dev->iobase + AM9513A_COM_REG);
  devpriv->com_reg_1_state &= ~COMREG1_1632CNT;
  outw(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
 } else {


  tmp = sample_count & 0xFFFF;
  if (tmp)
   outw(tmp - 1, dev->iobase + AM9513A_DATA_REG);
  else
   outw(0xFFFF, dev->iobase + AM9513A_DATA_REG);

  outw(0xFF48, dev->iobase + AM9513A_COM_REG);
  outw(0, dev->iobase + AM9513A_DATA_REG);
  outw(0xFF28, dev->iobase + AM9513A_COM_REG);
  outw(0xFF05, dev->iobase + AM9513A_COM_REG);
  outw(0x25, dev->iobase + AM9513A_DATA_REG);
  outw(0xFF0D, dev->iobase + AM9513A_COM_REG);
  tmp = sample_count & 0xFFFF;
  if ((tmp == 0) || (tmp == 1)) {
   outw((sample_count >> 16) & 0xFFFF,
        dev->iobase + AM9513A_DATA_REG);
  } else {
   outw(((sample_count >> 16) & 0xFFFF) + 1,
        dev->iobase + AM9513A_DATA_REG);
  }
  outw(0xFF70, dev->iobase + AM9513A_COM_REG);
  devpriv->com_reg_1_state |= COMREG1_1632CNT;
  outw(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
 }




 if (cmd->chanlist_len > 1) {
  if (cmd->scan_begin_arg < 65536000) {
   base_clock = CLOCK_1_MHZ;
   timer = cmd->scan_begin_arg / 1000;
  } else if (cmd->scan_begin_arg < 655360000) {
   base_clock = CLOCK_100_KHZ;
   timer = cmd->scan_begin_arg / 10000;
  } else if (cmd->scan_begin_arg < 0xffffffff ) {
   base_clock = CLOCK_10_KHZ;
   timer = cmd->scan_begin_arg / 100000;
  } else if (cmd->scan_begin_arg < 0xffffffff ) {
   base_clock = CLOCK_1_KHZ;
   timer = cmd->scan_begin_arg / 1000000;
  }
  outw(0xFF02, dev->iobase + AM9513A_COM_REG);
  outw(base_clock, dev->iobase + AM9513A_DATA_REG);
  outw(0xFF0A, dev->iobase + AM9513A_COM_REG);
  outw(0x2, dev->iobase + AM9513A_DATA_REG);
  outw(0xFF42, dev->iobase + AM9513A_COM_REG);
  outw(0xFFF2, dev->iobase + AM9513A_COM_REG);
  outw(timer, dev->iobase + AM9513A_DATA_REG);
  outw(0xFF22, dev->iobase + AM9513A_COM_REG);
 }


 outw(0, dev->iobase + AD_CLEAR_REG);
 outw(0, dev->iobase + MUX_CNTR_REG);
 outw(0, dev->iobase + INT2CLR_REG);

 devpriv->com_reg_1_state |= COMREG1_DAQEN;
 outw(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);

 devpriv->com_reg_1_state |= COMREG1_CONVINTEN;
 devpriv->com_reg_2_state |= COMREG2_INTEN;
 outw(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
 outw(devpriv->com_reg_2_state, dev->iobase + COM_REG_2);

 outw(0, dev->iobase + START_DAQ_REG);

 return 0;
}
