
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int minor; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; scalar_t__ start_arg; int scan_begin_arg; scalar_t__ scan_end_arg; scalar_t__ chanlist_len; scalar_t__ stop_arg; int flags; int * chanlist; } ;
struct TYPE_4__ {int hwver; } ;
struct TYPE_3__ {scalar_t__ min_hwver; } ;


 void* COMBINE (int,int ,int) ;
 unsigned int CR_CHAN (int ) ;
 int CR_EDGE ;
 int CR_FLAGS_MASK ;
 int CR_INVERT ;
 unsigned int CR_RANGE (int ) ;
 int DPRINTK (char*,int ) ;
 int MAX_SPEED_AO ;
 int MIN_SPEED_AO ;
 int TRIG_COUNT ;

 int TRIG_INT ;
 int TRIG_NONE ;
 unsigned int TRIG_NOW ;
 int TRIG_ROUND_MASK ;

 TYPE_2__* devpriv ;
 int pci230_ns_to_single_timer (unsigned int*,int) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int pci230_ao_cmdtest(struct comedi_device *dev,
        struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 int err = 0;
 unsigned int tmp;
 tmp = cmd->start_src;
 cmd->start_src &= TRIG_INT;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 if ((thisboard->min_hwver > 0) && (devpriv->hwver >= 2)) {
  cmd->scan_begin_src &= 128 | TRIG_INT | 129;
 } else {
  cmd->scan_begin_src &= 128 | TRIG_INT;
 }
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 cmd->convert_src &= TRIG_NOW;
 if (!cmd->convert_src || tmp != cmd->convert_src)
  err++;

 tmp = cmd->scan_end_src;
 cmd->scan_end_src &= TRIG_COUNT;
 if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
  err++;

 tmp = cmd->stop_src;
 cmd->stop_src &= TRIG_COUNT | TRIG_NONE;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;






 if ((cmd->start_src & (cmd->start_src - 1)) != 0)
  err++;
 if ((cmd->scan_begin_src & (cmd->scan_begin_src - 1)) != 0)
  err++;
 if ((cmd->convert_src & (cmd->convert_src - 1)) != 0)
  err++;
 if ((cmd->scan_end_src & (cmd->scan_end_src - 1)) != 0)
  err++;
 if ((cmd->stop_src & (cmd->stop_src - 1)) != 0)
  err++;

 if (err)
  return 2;





 if (cmd->start_arg != 0) {
  cmd->start_arg = 0;
  err++;
 }






 switch (cmd->scan_begin_src) {
 case 128:
  if (cmd->scan_begin_arg < 8000) {
   cmd->scan_begin_arg = 8000;
   err++;
  }
  if (cmd->scan_begin_arg > 4294967295u) {
   cmd->scan_begin_arg = 4294967295u;
   err++;
  }
  break;
 case 129:


  if ((cmd->scan_begin_arg & ~CR_FLAGS_MASK) != 0) {
   cmd->scan_begin_arg = COMBINE(cmd->scan_begin_arg, 0,
            ~CR_FLAGS_MASK);
   err++;
  }


  if ((cmd->scan_begin_arg
       & (CR_FLAGS_MASK & ~(CR_EDGE | CR_INVERT))) != 0) {
   cmd->scan_begin_arg =
       COMBINE(cmd->scan_begin_arg, 0,
        CR_FLAGS_MASK & ~(CR_EDGE | CR_INVERT));
   err++;
  }
  break;
 default:
  if (cmd->scan_begin_arg != 0) {
   cmd->scan_begin_arg = 0;
   err++;
  }
  break;
 }

 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }
 if (cmd->stop_src == TRIG_NONE) {

  if (cmd->stop_arg != 0) {
   cmd->stop_arg = 0;
   err++;
  }
 }

 if (err)
  return 3;





 if (cmd->scan_begin_src == 128) {
  tmp = cmd->scan_begin_arg;
  pci230_ns_to_single_timer(&cmd->scan_begin_arg,
       cmd->flags & TRIG_ROUND_MASK);
  if (tmp != cmd->scan_begin_arg)
   err++;
 }

 if (err)
  return 4;



 if (cmd->chanlist && cmd->chanlist_len > 0) {
  enum {
   seq_err = (1 << 0),
   range_err = (1 << 1)
  };
  unsigned int errors;
  unsigned int n;
  unsigned int chan, prev_chan;
  unsigned int range, first_range;

  prev_chan = CR_CHAN(cmd->chanlist[0]);
  first_range = CR_RANGE(cmd->chanlist[0]);
  errors = 0;
  for (n = 1; n < cmd->chanlist_len; n++) {
   chan = CR_CHAN(cmd->chanlist[n]);
   range = CR_RANGE(cmd->chanlist[n]);

   if (chan < prev_chan) {
    errors |= seq_err;
   }

   if (range != first_range) {
    errors |= range_err;
   }
   prev_chan = chan;
  }
  if (errors != 0) {
   err++;
   if ((errors & seq_err) != 0) {
    DPRINTK("comedi%d: amplc_pci230: ao_cmdtest: "
     "channel numbers must increase\n",
     dev->minor);
   }
   if ((errors & range_err) != 0) {
    DPRINTK("comedi%d: amplc_pci230: ao_cmdtest: "
     "channels must have the same range\n",
     dev->minor);
   }
  }
 }

 if (err)
  return 5;

 return 0;
}
