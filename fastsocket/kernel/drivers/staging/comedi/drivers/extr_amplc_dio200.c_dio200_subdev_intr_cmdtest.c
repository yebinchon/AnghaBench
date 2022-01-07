
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; scalar_t__ start_arg; scalar_t__ scan_begin_arg; scalar_t__ convert_arg; scalar_t__ scan_end_arg; scalar_t__ chanlist_len; int stop_arg; } ;



 unsigned int TRIG_EXT ;
 int TRIG_INT ;

 int TRIG_NOW ;

__attribute__((used)) static int
dio200_subdev_intr_cmdtest(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 int err = 0;
 unsigned int tmp;



 tmp = cmd->start_src;
 cmd->start_src &= (TRIG_NOW | TRIG_INT);
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
 cmd->stop_src &= (129 | 128);
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


 if (cmd->scan_begin_arg != 0) {
  cmd->scan_begin_arg = 0;
  err++;
 }


 if (cmd->convert_arg != 0) {
  cmd->convert_arg = 0;
  err++;
 }


 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }

 switch (cmd->stop_src) {
 case 129:

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





 return 0;
}
