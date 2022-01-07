
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;
struct TYPE_3__ {int channel_list_reg; } ;
struct TYPE_4__ {TYPE_1__ ai_context; } ;


 int CALL_PDEBUG (char*) ;
 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 unsigned int ME4000_AI_LIST_INPUT_DIFFERENTIAL ;
 unsigned int ME4000_AI_LIST_INPUT_SINGLE_ENDED ;
 unsigned int ME4000_AI_LIST_RANGE_BIPOLAR_10 ;
 unsigned int ME4000_AI_LIST_RANGE_BIPOLAR_2_5 ;
 unsigned int ME4000_AI_LIST_RANGE_UNIPOLAR_10 ;
 unsigned int ME4000_AI_LIST_RANGE_UNIPOLAR_2_5 ;
 unsigned int SDF_DIFF ;
 TYPE_2__* info ;
 int me4000_outl (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static int ai_write_chanlist(struct comedi_device *dev,
        struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 unsigned int entry;
 unsigned int chan;
 unsigned int rang;
 unsigned int aref;
 int i;

 CALL_PDEBUG("In ai_write_chanlist()\n");

 for (i = 0; i < cmd->chanlist_len; i++) {
  chan = CR_CHAN(cmd->chanlist[i]);
  rang = CR_RANGE(cmd->chanlist[i]);
  aref = CR_AREF(cmd->chanlist[i]);

  entry = chan;

  if (rang == 0) {
   entry |= ME4000_AI_LIST_RANGE_UNIPOLAR_2_5;
  } else if (rang == 1) {
   entry |= ME4000_AI_LIST_RANGE_UNIPOLAR_10;
  } else if (rang == 2) {
   entry |= ME4000_AI_LIST_RANGE_BIPOLAR_2_5;
  } else {
   entry |= ME4000_AI_LIST_RANGE_BIPOLAR_10;
  }

  if (aref == SDF_DIFF) {
   entry |= ME4000_AI_LIST_INPUT_DIFFERENTIAL;
  } else {
   entry |= ME4000_AI_LIST_INPUT_SINGLE_ENDED;
  }

  me4000_outl(dev, entry, info->ai_context.channel_list_reg);
 }

 return 0;
}
