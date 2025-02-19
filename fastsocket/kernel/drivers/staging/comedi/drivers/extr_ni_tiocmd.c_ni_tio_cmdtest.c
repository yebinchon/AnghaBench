
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_dev; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; scalar_t__ scan_end_arg; scalar_t__ chanlist_len; scalar_t__ stop_arg; scalar_t__ convert_arg; scalar_t__ scan_begin_arg; } ;


 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_FOLLOW ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_OTHER ;
 scalar_t__ ni_tio_counting_mode_registers_present (int ) ;

int ni_tio_cmdtest(struct ni_gpct *counter, struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;
 int sources;



 tmp = cmd->start_src;
 sources = TRIG_NOW | TRIG_INT | TRIG_OTHER;
 if (ni_tio_counting_mode_registers_present(counter->counter_dev))
  sources |= TRIG_EXT;
 cmd->start_src &= sources;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_FOLLOW | TRIG_EXT | TRIG_OTHER;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 sources = TRIG_NOW | TRIG_EXT | TRIG_OTHER;
 cmd->convert_src &= sources;
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



 if (cmd->start_src != TRIG_NOW &&
     cmd->start_src != TRIG_INT &&
     cmd->start_src != TRIG_EXT && cmd->start_src != TRIG_OTHER)
  err++;
 if (cmd->scan_begin_src != TRIG_FOLLOW &&
     cmd->scan_begin_src != TRIG_EXT &&
     cmd->scan_begin_src != TRIG_OTHER)
  err++;
 if (cmd->convert_src != TRIG_OTHER &&
     cmd->convert_src != TRIG_EXT && cmd->convert_src != TRIG_NOW)
  err++;
 if (cmd->stop_src != TRIG_NONE)
  err++;

 if (cmd->convert_src != TRIG_NOW && cmd->scan_begin_src != TRIG_FOLLOW)
  err++;

 if (err)
  return 2;


 if (cmd->start_src != TRIG_EXT) {
  if (cmd->start_arg != 0) {
   cmd->start_arg = 0;
   err++;
  }
 }
 if (cmd->scan_begin_src != TRIG_EXT) {
  if (cmd->scan_begin_arg) {
   cmd->scan_begin_arg = 0;
   err++;
  }
 }
 if (cmd->convert_src != TRIG_EXT) {
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

 return 0;
}
