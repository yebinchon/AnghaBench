
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef short u32 ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;
struct comedi_async {int cur_chan; int events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {int reg_type; } ;


 int COMEDI_CB_OVERFLOW ;
 int CR_RANGE (int ) ;
 int DAC_FIFO_Data ;
 int DAC_FIFO_Data_611x ;
 TYPE_1__ boardtype ;
 int comedi_buf_get (struct comedi_async*,short*) ;
 int ni_reg_6711 ;
 int ni_reg_6xxx_mask ;
 int ni_writel (short,int ) ;
 int ni_writew (short,int ) ;

__attribute__((used)) static void ni_ao_fifo_load(struct comedi_device *dev,
       struct comedi_subdevice *s, int n)
{
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 int chan;
 int i;
 short d;
 u32 packed_data;
 int range;
 int err = 1;

 chan = async->cur_chan;
 for (i = 0; i < n; i++) {
  err &= comedi_buf_get(async, &d);
  if (err == 0)
   break;

  range = CR_RANGE(cmd->chanlist[chan]);

  if (boardtype.reg_type & ni_reg_6xxx_mask) {
   packed_data = d & 0xffff;

   if (boardtype.reg_type != ni_reg_6711) {
    err &= comedi_buf_get(async, &d);
    if (err == 0)
     break;
    chan++;
    i++;
    packed_data |= (d << 16) & 0xffff0000;
   }
   ni_writel(packed_data, DAC_FIFO_Data_611x);
  } else {
   ni_writew(d, DAC_FIFO_Data);
  }
  chan++;
  chan %= cmd->chanlist_len;
 }
 async->cur_chan = chan;
 if (err == 0) {
  async->events |= COMEDI_CB_OVERFLOW;
 }
}
