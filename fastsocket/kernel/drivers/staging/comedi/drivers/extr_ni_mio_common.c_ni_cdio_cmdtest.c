
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; int scan_begin_arg; unsigned int scan_end_arg; unsigned int chanlist_len; scalar_t__ stop_arg; unsigned int* chanlist; scalar_t__ convert_arg; } ;


 int CDO_Sample_Source_Select_Mask ;
 int CR_INVERT ;
 int CR_PACK_FLAGS (int ,int ,int ,int ) ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;

__attribute__((used)) static int ni_cdio_cmdtest(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;
 int sources;
 unsigned i;



 tmp = cmd->start_src;
 sources = TRIG_INT;
 cmd->start_src &= sources;
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
 cmd->scan_end_src &= TRIG_COUNT;
 if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
  err++;

 tmp = cmd->stop_src;
 cmd->stop_src &= TRIG_NONE;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;



 if (cmd->start_src != TRIG_INT)
  err++;
 if (cmd->scan_begin_src != TRIG_EXT)
  err++;
 if (cmd->convert_src != TRIG_NOW)
  err++;
 if (cmd->stop_src != TRIG_NONE)
  err++;


 if (err)
  return 2;


 if (cmd->start_src == TRIG_INT) {
  if (cmd->start_arg != 0) {
   cmd->start_arg = 0;
   err++;
  }
 }
 if (cmd->scan_begin_src == TRIG_EXT) {
  tmp = cmd->scan_begin_arg;
  tmp &= CR_PACK_FLAGS(CDO_Sample_Source_Select_Mask, 0, 0,
         CR_INVERT);
  if (tmp != cmd->scan_begin_arg) {
   err++;
  }
 }
 if (cmd->convert_src == TRIG_NOW) {
  if (cmd->convert_arg) {
   cmd->convert_arg = 0;
   err++;
  }
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



 if (err)
  return 4;



 for (i = 0; i < cmd->chanlist_len; ++i) {
  if (cmd->chanlist[i] != i)
   err = 1;
 }

 if (err)
  return 5;

 return 0;
}
