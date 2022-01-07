
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


struct comedi_device {int dummy; } ;
struct TYPE_13__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_14__ {TYPE_6__ s_BoardInfos; TYPE_5__* s_ModuleInfo; } ;
struct TYPE_9__ {int b_ModeRegister1; } ;
struct TYPE_10__ {TYPE_2__ s_ByteModeRegister; } ;
struct TYPE_8__ {int b_CounterInit; } ;
struct TYPE_11__ {TYPE_3__ s_ModeRegister; TYPE_1__ s_InitFlag; } ;
struct TYPE_12__ {TYPE_4__ s_SiemensCounterInfo; } ;


 int DPRINTK (char*) ;
 TYPE_7__* devpriv ;
 unsigned int inl (scalar_t__) ;

int i_APCI1710_Get16BitCBStatus(struct comedi_device *dev,
 unsigned char b_ModulNbr, unsigned char *pb_CBStatusCounter0, unsigned char *pb_CBStatusCounter1)
{
 int i_ReturnValue = 0;
 unsigned int dw_StatusReg = 0;





 if (b_ModulNbr < 4) {




  if (devpriv->
   s_ModuleInfo[b_ModulNbr].
   s_SiemensCounterInfo.s_InitFlag.b_CounterInit == 1) {




   if ((devpriv->s_ModuleInfo[b_ModulNbr].
     s_SiemensCounterInfo.
     s_ModeRegister.
     s_ByteModeRegister.
     b_ModeRegister1 & 0x10) == 0x10) {




    if ((devpriv->s_BoardInfos.
      dw_MolduleConfiguration
      [b_ModulNbr] & 0xFFFF) >=
     0x3136) {
     dw_StatusReg =
      inl(devpriv->s_BoardInfos.
      ui_Address + 16 +
      (64 * b_ModulNbr));

     *pb_CBStatusCounter1 =
      (unsigned char) ((dw_StatusReg >> 0) &
      1);
     *pb_CBStatusCounter0 =
      (unsigned char) ((dw_StatusReg >> 1) &
      1);
    }
    else {




     i_ReturnValue = -5;
    }
   }
   else {





    DPRINTK("Counter not initialised\n");
    i_ReturnValue = -4;
   }
  }
  else {





   DPRINTK("Counter not initialised\n");
   i_ReturnValue = -3;
  }
 }
 else {




  DPRINTK("The selected module number parameter is wrong\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
