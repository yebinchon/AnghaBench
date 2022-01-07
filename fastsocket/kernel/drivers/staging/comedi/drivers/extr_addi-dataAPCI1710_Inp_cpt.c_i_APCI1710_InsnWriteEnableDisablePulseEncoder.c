
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
struct TYPE_9__ {int ui_Address; } ;
struct TYPE_10__ {TYPE_4__ s_BoardInfos; TYPE_3__* s_ModuleInfo; int tsk_Current; } ;
struct TYPE_7__ {int dw_SetRegister; unsigned long dw_ControlRegister; TYPE_1__* s_PulseEncoderInfo; } ;
struct TYPE_8__ {TYPE_2__ s_PulseEncoderModuleInfo; } ;
struct TYPE_6__ {int b_PulseEncoderInit; } ;


 unsigned char APCI1710_CONTINUOUS ;


 unsigned char APCI1710_SINGLE ;
 scalar_t__ CR_AREF (int ) ;
 int DPRINTK (char*) ;
 int current ;
 TYPE_5__* devpriv ;
 int outl (int,int ) ;

int i_APCI1710_InsnWriteEnableDisablePulseEncoder(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned char b_ModulNbr;
 unsigned char b_PulseEncoderNbr;
 unsigned char b_CycleSelection;
 unsigned char b_InterruptHandling;
 unsigned char b_Action;

 i_ReturnValue = insn->n;
 b_ModulNbr = (unsigned char) CR_AREF(insn->chanspec);
 b_Action = (unsigned char) data[0];
 b_PulseEncoderNbr = (unsigned char) data[1];
 b_CycleSelection = (unsigned char) data[2];
 b_InterruptHandling = (unsigned char) data[3];





 if (b_ModulNbr <= 3) {




  if (b_PulseEncoderNbr <= 3) {




   if (devpriv->s_ModuleInfo[b_ModulNbr].
    s_PulseEncoderModuleInfo.
    s_PulseEncoderInfo[b_PulseEncoderNbr].
    b_PulseEncoderInit == 1) {
    switch (b_Action) {

    case 128:




     if (b_CycleSelection ==
      APCI1710_CONTINUOUS
      || b_CycleSelection ==
      APCI1710_SINGLE) {




      if (b_InterruptHandling ==
       128
       || b_InterruptHandling
       == 129) {




       if (b_InterruptHandling
        ==
        129)
       {




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
         (1UL << b_PulseEncoderNbr));
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
         | (1UL
         <<
         b_PulseEncoderNbr);
        devpriv->tsk_Current = current;

       }

       if (i_ReturnValue >= 0) {




        outl(devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_SetRegister,
         devpriv->
         s_BoardInfos.
         ui_Address
         + 20 +
         (64 * b_ModulNbr));




        devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_ControlRegister
         =
         devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_ControlRegister
         | (1UL
         <<
         b_PulseEncoderNbr);





        devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_ControlRegister
         =
         (devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_ControlRegister
         &
         (0xFFFFFFFFUL
          -
          (1 << (b_PulseEncoderNbr + 4)))) | ((b_CycleSelection & 1UL) << (4 + b_PulseEncoderNbr));





        outl(devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_PulseEncoderModuleInfo.
         dw_ControlRegister,
         devpriv->
         s_BoardInfos.
         ui_Address
         + 16 +
         (64 * b_ModulNbr));
       }
      } else {




       DPRINTK("Interrupt handling mode is wrong\n");
       i_ReturnValue = -6;
      }
     } else {




      DPRINTK("Cycle selection mode is wrong\n");
      i_ReturnValue = -5;
     }
     break;

    case 129:
     devpriv->s_ModuleInfo[b_ModulNbr].
      s_PulseEncoderModuleInfo.
      dw_ControlRegister =
      devpriv->
      s_ModuleInfo[b_ModulNbr].
      s_PulseEncoderModuleInfo.
      dw_ControlRegister &
      (0xFFFFFFFFUL -
      (1UL << b_PulseEncoderNbr));





     outl(devpriv->s_ModuleInfo[b_ModulNbr].
      s_PulseEncoderModuleInfo.
      dw_ControlRegister,
      devpriv->s_BoardInfos.
      ui_Address + 16 +
      (64 * b_ModulNbr));

     break;
    }

   } else {




    DPRINTK("Pulse encoder not initialised\n");
    i_ReturnValue = -4;
   }
  } else {




   DPRINTK("Pulse encoder selection is wrong\n");
   i_ReturnValue = -3;
  }
 } else {




  DPRINTK("Module selection is wrong\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
