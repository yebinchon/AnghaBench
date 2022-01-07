
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_10__ {TYPE_4__* s_ModuleInfo; TYPE_1__ s_BoardInfos; } ;
struct TYPE_8__ {int dw_SetRegister; TYPE_2__* s_PulseEncoderInfo; } ;
struct TYPE_9__ {TYPE_3__ s_PulseEncoderModuleInfo; } ;
struct TYPE_7__ {int b_PulseEncoderInit; } ;


 int APCI1710_PULSE_ENCODER ;
 scalar_t__ CR_AREF (int ) ;
 int DPRINTK (char*) ;
 TYPE_5__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

int i_APCI1710_InsnConfigInitPulseEncoder(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned int dw_IntRegister;

 unsigned char b_ModulNbr;
 unsigned char b_PulseEncoderNbr;
 unsigned char b_InputLevelSelection;
 unsigned char b_TriggerOutputAction;
 unsigned int ul_StartValue;

 b_ModulNbr = (unsigned char) CR_AREF(insn->chanspec);
 b_PulseEncoderNbr = (unsigned char) data[0];
 b_InputLevelSelection = (unsigned char) data[1];
 b_TriggerOutputAction = (unsigned char) data[2];
 ul_StartValue = (unsigned int) data[3];

 i_ReturnValue = insn->n;





 if (b_ModulNbr <= 3) {




  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    APCI1710_PULSE_ENCODER) ==
   APCI1710_PULSE_ENCODER) {




   if (b_PulseEncoderNbr <= 3) {




    if ((b_InputLevelSelection == 0)
     || (b_InputLevelSelection == 1)) {




     if ((b_TriggerOutputAction <= 2)
      || (b_PulseEncoderNbr > 0)) {
      if (ul_StartValue > 1) {

       dw_IntRegister =
        inl(devpriv->
        s_BoardInfos.
        ui_Address +
        20 +
        (64 * b_ModulNbr));





       outl(ul_StartValue,
        devpriv->
        s_BoardInfos.
        ui_Address +
        (b_PulseEncoderNbr
         * 4) +
        (64 * b_ModulNbr));




       devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_PulseEncoderModuleInfo.
        dw_SetRegister =
        (devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_PulseEncoderModuleInfo.
        dw_SetRegister &
        (0xFFFFFFFFUL -
         (1UL << (8 + b_PulseEncoderNbr)))) | ((1UL & (~b_InputLevelSelection)) << (8 + b_PulseEncoderNbr));





       if ((b_TriggerOutputAction > 0) && (b_PulseEncoderNbr > 1)) {




        devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_SetRegister
         =
         devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_SetRegister
         | (1UL
         << (4 + b_PulseEncoderNbr));





        devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_SetRegister
         =
         (devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_SetRegister
         &
         (0xFFFFFFFFUL
          -
          (1UL << (12 + b_PulseEncoderNbr)))) | ((1UL & (b_TriggerOutputAction - 1)) << (12 + b_PulseEncoderNbr));
       } else {




        devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_SetRegister
         =
         devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_SetRegister
         &
         (0xFFFFFFFFUL
         -
         (1UL << (4 + b_PulseEncoderNbr)));
       }





       outl(devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_PulseEncoderModuleInfo.
        dw_SetRegister,
        devpriv->
        s_BoardInfos.
        ui_Address +
        20 +
        (64 * b_ModulNbr));

       devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_PulseEncoderModuleInfo.
        s_PulseEncoderInfo
        [b_PulseEncoderNbr].
        b_PulseEncoderInit
        = 1;
      } else {




       DPRINTK("Pulse encoder start value is wrong\n");
       i_ReturnValue = -6;
      }
     } else {




      DPRINTK("Digital TRIGGER output action selection is wrong\n");
      i_ReturnValue = -5;
     }
    } else {




     DPRINTK("Input level selection is wrong\n");
     i_ReturnValue = -4;
    }
   } else {




    DPRINTK("Pulse encoder selection is wrong\n");
    i_ReturnValue = -3;
   }
  } else {




   DPRINTK("The module is not a pulse encoder module\n");
   i_ReturnValue = -2;
  }
 } else {




  DPRINTK("The module is not a pulse encoder module\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
