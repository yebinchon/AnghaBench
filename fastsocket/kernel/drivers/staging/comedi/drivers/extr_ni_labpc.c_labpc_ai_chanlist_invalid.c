
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 int CR_AREF (int ) ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;


 int MODE_SINGLE_CHAN ;

 int comedi_error (struct comedi_device const*,char*) ;
 int labpc_ai_scan_mode (struct comedi_cmd const*) ;
 int printk (char*) ;

__attribute__((used)) static int labpc_ai_chanlist_invalid(const struct comedi_device *dev,
         const struct comedi_cmd *cmd)
{
 int mode, channel, range, aref, i;

 if (cmd->chanlist == ((void*)0))
  return 0;

 mode = labpc_ai_scan_mode(cmd);

 if (mode == MODE_SINGLE_CHAN)
  return 0;

 if (mode == 128) {
  if (cmd->chanlist_len > 0xff) {
   comedi_error(dev,
         "ni_labpc: chanlist too long for single channel interval mode\n");
   return 1;
  }
 }

 channel = CR_CHAN(cmd->chanlist[0]);
 range = CR_RANGE(cmd->chanlist[0]);
 aref = CR_AREF(cmd->chanlist[0]);

 for (i = 0; i < cmd->chanlist_len; i++) {

  switch (mode) {
  case 128:
   if (CR_CHAN(cmd->chanlist[i]) != channel) {
    comedi_error(dev,
          "channel scanning order specified in chanlist is not supported by hardware.\n");
    return 1;
   }
   break;
  case 129:
   if (CR_CHAN(cmd->chanlist[i]) != i) {
    comedi_error(dev,
          "channel scanning order specified in chanlist is not supported by hardware.\n");
    return 1;
   }
   break;
  case 130:
   if (CR_CHAN(cmd->chanlist[i]) !=
       cmd->chanlist_len - i - 1) {
    comedi_error(dev,
          "channel scanning order specified in chanlist is not supported by hardware.\n");
    return 1;
   }
   break;
  default:
   printk("ni_labpc: bug! in chanlist check\n");
   return 1;
   break;
  }

  if (CR_RANGE(cmd->chanlist[i]) != range) {
   comedi_error(dev,
         "entries in chanlist must all have the same range\n");
   return 1;
  }

  if (CR_AREF(cmd->chanlist[i]) != aref) {
   comedi_error(dev,
         "entries in chanlist must all have the same reference\n");
   return 1;
  }
 }

 return 0;
}
