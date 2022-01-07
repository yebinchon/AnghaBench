
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {scalar_t__ scan_begin_src; scalar_t__ convert_src; unsigned int scan_begin_arg; } ;


 scalar_t__ MODE_SINGLE_CHAN ;
 scalar_t__ TRIG_TIMER ;
 scalar_t__ labpc_ai_scan_mode (struct comedi_cmd const*) ;

__attribute__((used)) static unsigned int labpc_ai_scan_period(const struct comedi_cmd *cmd)
{
 if (cmd->scan_begin_src != TRIG_TIMER)
  return 0;

 if (labpc_ai_scan_mode(cmd) == MODE_SINGLE_CHAN &&
     cmd->convert_src == TRIG_TIMER)
  return 0;

 return cmd->scan_begin_arg;
}
