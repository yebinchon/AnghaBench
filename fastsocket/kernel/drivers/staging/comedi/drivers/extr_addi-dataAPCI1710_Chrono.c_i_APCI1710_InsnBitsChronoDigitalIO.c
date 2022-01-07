
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_7__ {int* dw_MolduleConfiguration; int ui_Address; } ;
struct TYPE_8__ {TYPE_3__ s_BoardInfos; TYPE_2__* s_ModuleInfo; } ;
struct TYPE_5__ {int b_ChronoInit; } ;
struct TYPE_6__ {TYPE_1__ s_ChronoModuleInfo; } ;


 int APCI1710_CHRONOMETER ;




 unsigned char CR_AREF (int ) ;
 scalar_t__ CR_CHAN (int ) ;
 int DPRINTK (char*) ;
 TYPE_4__* devpriv ;
 unsigned int inl (int ) ;
 int outl (int,int ) ;

int i_APCI1710_InsnBitsChronoDigitalIO(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned char b_ModulNbr, b_OutputChannel, b_InputChannel, b_IOType;
 unsigned int dw_Status;
 unsigned char *pb_ChannelStatus;
 unsigned char *pb_PortValue;

 b_ModulNbr = CR_AREF(insn->chanspec);
 i_ReturnValue = insn->n;
 b_IOType = (unsigned char) data[0];





 if (b_ModulNbr < 4) {




  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    0xFFFF0000UL) == APCI1710_CHRONOMETER) {




   if (devpriv->s_ModuleInfo[b_ModulNbr].
    s_ChronoModuleInfo.b_ChronoInit == 1) {



    switch (b_IOType) {

    case 129:

     b_OutputChannel =
      (unsigned char) CR_CHAN(insn->chanspec);
     if (b_OutputChannel <= 2) {

      outl(0, devpriv->s_BoardInfos.
       ui_Address + 20 +
       (b_OutputChannel * 4) +
       (64 * b_ModulNbr));
     }
     else {




      DPRINTK("The selected digital output is wrong\n");
      i_ReturnValue = -4;

     }

     break;

    case 128:

     b_OutputChannel =
      (unsigned char) CR_CHAN(insn->chanspec);
     if (b_OutputChannel <= 2) {

      outl(1, devpriv->s_BoardInfos.
       ui_Address + 20 +
       (b_OutputChannel * 4) +
       (64 * b_ModulNbr));
     }
     else {




      DPRINTK("The selected digital output is wrong\n");
      i_ReturnValue = -4;

     }

     break;

    case 131:



     pb_ChannelStatus = (unsigned char *) &data[0];
     b_InputChannel =
      (unsigned char) CR_CHAN(insn->chanspec);

     if (b_InputChannel <= 2) {

      dw_Status =
       inl(devpriv->
       s_BoardInfos.
       ui_Address + 12 +
       (64 * b_ModulNbr));

      *pb_ChannelStatus =
       (unsigned char) (((dw_Status >>
         b_InputChannel)
        & 1) ^ 1);
     }
     else {




      DPRINTK("The selected digital input is wrong\n");
      i_ReturnValue = -4;
     }

     break;

    case 130:

     pb_PortValue = (unsigned char *) &data[0];

     dw_Status =
      inl(devpriv->s_BoardInfos.
      ui_Address + 12 +
      (64 * b_ModulNbr));

     *pb_PortValue =
      (unsigned char) ((dw_Status & 0x7) ^ 7);
     break;
    }
   } else {




    DPRINTK("Chronometer not initialised\n");
    i_ReturnValue = -5;
   }
  } else {




   DPRINTK("The module is not a Chronometer module\n");
   i_ReturnValue = -3;
  }
 } else {




  DPRINTK("Module number error\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
