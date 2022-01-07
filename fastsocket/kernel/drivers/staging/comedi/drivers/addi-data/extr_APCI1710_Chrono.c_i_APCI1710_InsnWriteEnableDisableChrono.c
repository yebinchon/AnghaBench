
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
struct TYPE_8__ {TYPE_3__ s_BoardInfos; TYPE_2__* s_ModuleInfo; int tsk_Current; } ;
struct TYPE_5__ {int b_ChronoInit; unsigned char b_InterruptMask; unsigned char b_CycleMode; int dw_ConfigReg; } ;
struct TYPE_6__ {TYPE_1__ s_ChronoModuleInfo; } ;


 int APCI1710_CHRONOMETER ;
 unsigned char APCI1710_CONTINUOUS ;


 unsigned char APCI1710_SINGLE ;
 unsigned char CR_AREF (int ) ;
 int DPRINTK (char*) ;
 int current ;
 TYPE_4__* devpriv ;
 int outl (int,int ) ;

int i_APCI1710_InsnWriteEnableDisableChrono(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned char b_ModulNbr, b_CycleMode, b_InterruptEnable, b_Action;
 b_ModulNbr = CR_AREF(insn->chanspec);
 b_Action = (unsigned char) data[0];
 b_CycleMode = (unsigned char) data[1];
 b_InterruptEnable = (unsigned char) data[2];
 i_ReturnValue = insn->n;





 if (b_ModulNbr < 4) {




  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    0xFFFF0000UL) == APCI1710_CHRONOMETER) {




   if (devpriv->s_ModuleInfo[b_ModulNbr].
    s_ChronoModuleInfo.b_ChronoInit == 1) {

    switch (b_Action) {

    case 128:





     if ((b_CycleMode == APCI1710_SINGLE)
      || (b_CycleMode ==
       APCI1710_CONTINUOUS)) {




      if ((b_InterruptEnable ==
        128)
       || (b_InterruptEnable ==
        129))
      {





       devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_ChronoModuleInfo.
        b_InterruptMask
        =
        b_InterruptEnable;





       devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_ChronoModuleInfo.
        b_CycleMode =
        b_CycleMode;

       devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_ChronoModuleInfo.
        dw_ConfigReg =
        (devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_ChronoModuleInfo.
        dw_ConfigReg &
        0x8F) | ((1 &
         b_InterruptEnable)
        << 5) | ((1 &
         b_CycleMode)
        << 6) | 0x10;





       if (b_InterruptEnable ==
        128)
       {




        outl(devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_ChronoModuleInfo.
         dw_ConfigReg,
         devpriv->
         s_BoardInfos.
         ui_Address
         + 32 +
         (64 * b_ModulNbr));
        devpriv->tsk_Current = current;
       }






       outl(devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_ChronoModuleInfo.
        dw_ConfigReg,
        devpriv->
        s_BoardInfos.
        ui_Address +
        16 +
        (64 * b_ModulNbr));





       outl(0, devpriv->
        s_BoardInfos.
        ui_Address +
        36 +
        (64 * b_ModulNbr));

      }
      else {




       DPRINTK("Interrupt parameter is wrong\n");
       i_ReturnValue = -6;
      }
     }
     else {




      DPRINTK("Chronometer acquisition mode cycle is wrong\n");
      i_ReturnValue = -5;
     }
     break;

    case 129:

     devpriv->s_ModuleInfo[b_ModulNbr].
      s_ChronoModuleInfo.
      b_InterruptMask = 0;

     devpriv->s_ModuleInfo[b_ModulNbr].
      s_ChronoModuleInfo.
      dw_ConfigReg =
      devpriv->
      s_ModuleInfo[b_ModulNbr].
      s_ChronoModuleInfo.
      dw_ConfigReg & 0x2F;






     outl(devpriv->s_ModuleInfo[b_ModulNbr].
      s_ChronoModuleInfo.dw_ConfigReg,
      devpriv->s_BoardInfos.
      ui_Address + 16 +
      (64 * b_ModulNbr));





     if (devpriv->s_ModuleInfo[b_ModulNbr].
      s_ChronoModuleInfo.
      b_CycleMode ==
      APCI1710_CONTINUOUS) {




      outl(0, devpriv->s_BoardInfos.
       ui_Address + 36 +
       (64 * b_ModulNbr));
     }
     break;

    default:
     DPRINTK("Inputs wrong! Enable or Disable chrono\n");
     i_ReturnValue = -8;
    }
   } else {




    DPRINTK("Chronometer not initialised\n");
    i_ReturnValue = -4;
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
