
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_13__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_9__ {size_t ui_Read; TYPE_1__* s_FIFOInterruptParameters; } ;
struct TYPE_14__ {TYPE_6__ s_BoardInfos; TYPE_5__* s_ModuleInfo; TYPE_2__ s_InterruptParameters; } ;
struct TYPE_11__ {TYPE_3__* s_82X54TimerInfo; } ;
struct TYPE_12__ {TYPE_4__ s_82X54ModuleInfo; } ;
struct TYPE_10__ {int b_82X54Init; } ;
struct TYPE_8__ {unsigned int b_OldModuleMask; unsigned int ul_OldInterruptMask; unsigned int ul_OldCounterLatchValue; } ;


 int APCI1710_82X54_TIMER ;
 int APCI1710_SAVE_INTERRUPT ;


 unsigned char CR_AREF (int ) ;
 unsigned char CR_CHAN (int ) ;
 int DPRINTK (char*) ;
 TYPE_7__* devpriv ;
 unsigned int inl (int ) ;
 int outl (int,int ) ;

int i_APCI1710_InsnReadAllTimerValue(struct comedi_device *dev, struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned char b_ModulNbr, b_ReadType;
 unsigned int *pul_TimerValueArray;

 b_ModulNbr = CR_AREF(insn->chanspec);
 b_ReadType = CR_CHAN(insn->chanspec);
 pul_TimerValueArray = (unsigned int *) data;
 i_ReturnValue = insn->n;

 switch (b_ReadType) {
 case 128:

  data[0] = devpriv->s_InterruptParameters.s_FIFOInterruptParameters[devpriv->s_InterruptParameters.ui_Read].b_OldModuleMask;
  data[1] = devpriv->s_InterruptParameters.s_FIFOInterruptParameters[devpriv->s_InterruptParameters.ui_Read].ul_OldInterruptMask;
  data[2] = devpriv->s_InterruptParameters.s_FIFOInterruptParameters[devpriv->s_InterruptParameters.ui_Read].ul_OldCounterLatchValue;


  devpriv->s_InterruptParameters.ui_Read = (devpriv->s_InterruptParameters.ui_Read + 1) % APCI1710_SAVE_INTERRUPT;

  break;

 case 129:

  if (b_ModulNbr < 4) {

   if ((devpriv->s_BoardInfos.dw_MolduleConfiguration[b_ModulNbr] & 0xFFFF0000UL) == APCI1710_82X54_TIMER) {

    if (devpriv->s_ModuleInfo[b_ModulNbr].s_82X54ModuleInfo.s_82X54TimerInfo[0].b_82X54Init == 1) {

     if (devpriv->s_ModuleInfo[b_ModulNbr].s_82X54ModuleInfo.s_82X54TimerInfo[1].b_82X54Init == 1) {

      if (devpriv->s_ModuleInfo[b_ModulNbr].s_82X54ModuleInfo.s_82X54TimerInfo[2].b_82X54Init == 1) {

       outl(0x17, devpriv->s_BoardInfos.ui_Address + 12 + (64 * b_ModulNbr));


       pul_TimerValueArray[0] = inl(devpriv->s_BoardInfos.ui_Address + 0 + (64 * b_ModulNbr));


       pul_TimerValueArray[1] = inl(devpriv->s_BoardInfos.ui_Address + 4 + (64 * b_ModulNbr));


       pul_TimerValueArray[2] = inl(devpriv->s_BoardInfos.ui_Address + 8 + (64 * b_ModulNbr));
      } else {

       DPRINTK("Timer 2 not initialised see function\n");
       i_ReturnValue = -6;
      }
     } else {

      DPRINTK("Timer 1 not initialised see function\n");
      i_ReturnValue = -5;
     }
    } else {

     DPRINTK("Timer 0 not initialised see function\n");
     i_ReturnValue = -4;
    }
   } else {

    DPRINTK("The module is not a TIMER module\n");
    i_ReturnValue = -3;
   }
  } else {

   DPRINTK("Module number error\n");
   i_ReturnValue = -2;
  }

 }
 return i_ReturnValue;
}
