
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {scalar_t__ scan_begin_src; } ;


 scalar_t__ MODE_SINGLE_CHAN ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ labpc_ai_scan_mode (struct comedi_cmd const*) ;

__attribute__((used)) static int labpc_use_continuous_mode(const struct comedi_cmd *cmd)
{
 if (labpc_ai_scan_mode(cmd) == MODE_SINGLE_CHAN)
  return 1;

 if (cmd->scan_begin_src == TRIG_FOLLOW)
  return 1;

 return 0;
}
