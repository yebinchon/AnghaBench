
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {int chanlist_len; int * chanlist; } ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 scalar_t__ CR_CHAN (int ) ;
 int MODE_MULT_CHAN_DOWN ;
 int MODE_MULT_CHAN_UP ;
 int MODE_SINGLE_CHAN ;
 int MODE_SINGLE_CHAN_INTERVAL ;
 int printk (char*) ;

__attribute__((used)) static enum scan_mode labpc_ai_scan_mode(const struct comedi_cmd *cmd)
{
 if (cmd->chanlist_len == 1)
  return MODE_SINGLE_CHAN;


 if (cmd->chanlist == ((void*)0))
  return MODE_MULT_CHAN_UP;

 if (CR_CHAN(cmd->chanlist[0]) == CR_CHAN(cmd->chanlist[1]))
  return MODE_SINGLE_CHAN_INTERVAL;

 if (CR_CHAN(cmd->chanlist[0]) < CR_CHAN(cmd->chanlist[1]))
  return MODE_MULT_CHAN_UP;

 if (CR_CHAN(cmd->chanlist[0]) > CR_CHAN(cmd->chanlist[1]))
  return MODE_MULT_CHAN_DOWN;

 printk("ni_labpc: bug! this should never happen\n");

 return 0;
}
