
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {scalar_t__ convert_src; scalar_t__ scan_begin_src; unsigned int scan_begin_arg; unsigned int convert_arg; } ;


 scalar_t__ MODE_SINGLE_CHAN ;
 scalar_t__ TRIG_TIMER ;
 scalar_t__ labpc_ai_scan_mode (struct comedi_cmd*) ;

__attribute__((used)) static void labpc_set_ai_convert_period(struct comedi_cmd *cmd, unsigned int ns)
{
 if (cmd->convert_src != TRIG_TIMER)
  return;

 if (labpc_ai_scan_mode(cmd) == MODE_SINGLE_CHAN &&
     cmd->scan_begin_src == TRIG_TIMER) {
  cmd->scan_begin_arg = ns;
  if (cmd->convert_arg > cmd->scan_begin_arg)
   cmd->convert_arg = cmd->scan_begin_arg;
 } else
  cmd->convert_arg = ns;
}
