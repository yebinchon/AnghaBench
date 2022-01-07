
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int chanlist_len; int scan_end_arg; int stop_arg; int * chanlist; } ;


 int CR_CHAN (int ) ;

 int TRIG_EXT ;

 int TRIG_NOW ;
 int comedi_error (struct comedi_device*,char*) ;

__attribute__((used)) static int di_cmd_test(struct comedi_device *dev, struct comedi_subdevice *s,
         struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;
 int i;



 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_EXT;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 cmd->convert_src &= TRIG_NOW;
 if (!cmd->convert_src || tmp != cmd->convert_src)
  err++;

 tmp = cmd->scan_end_src;
 cmd->scan_end_src &= 129;
 if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
  err++;

 tmp = cmd->stop_src;
 cmd->stop_src &= 129 | 128;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;




 if (cmd->stop_src != 129 && cmd->stop_src != 128)
  err++;

 if (err)
  return 2;



 if (!cmd->chanlist_len) {
  cmd->chanlist_len = 32;
  err++;
 }
 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }

 switch (cmd->stop_src) {
 case 129:
  if (!cmd->stop_arg) {
   cmd->stop_arg = 1;
   err++;
  }
  break;
 case 128:
  if (cmd->stop_arg != 0) {
   cmd->stop_arg = 0;
   err++;
  }
  break;
 default:
  break;
 }

 if (err)
  return 3;



 if (err)
  return 4;

 if (cmd->chanlist) {
  for (i = 1; i < cmd->chanlist_len; i++) {
   if (CR_CHAN(cmd->chanlist[i]) != i) {

    comedi_error(dev,
          "chanlist must be channels 0 to 31 in order");
    err++;
    break;
   }
  }
 }

 if (err)
  return 5;

 return 0;
}
