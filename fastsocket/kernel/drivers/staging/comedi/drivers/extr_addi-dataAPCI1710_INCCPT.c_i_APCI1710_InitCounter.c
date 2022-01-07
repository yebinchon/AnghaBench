
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
struct TYPE_10__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_14__ {TYPE_6__* s_ModuleInfo; TYPE_3__ s_BoardInfos; } ;
struct TYPE_11__ {int b_CounterInit; } ;
struct TYPE_8__ {unsigned char b_ModeRegister1; } ;
struct TYPE_9__ {int dw_ModeRegister1_2_3_4; TYPE_1__ s_ByteModeRegister; } ;
struct TYPE_12__ {TYPE_4__ s_InitFlag; TYPE_2__ s_ModeRegister; } ;
struct TYPE_13__ {TYPE_5__ s_SiemensCounterInfo; } ;


 unsigned char APCI1710_16BIT_COUNTER ;
 unsigned char APCI1710_32BIT_COUNTER ;
 unsigned char APCI1710_DECREMENT ;
 unsigned char APCI1710_DIRECT_MODE ;
 unsigned char APCI1710_DOUBLE_MODE ;
 unsigned char APCI1710_HYSTERESIS_OFF ;
 unsigned char APCI1710_HYSTERESIS_ON ;
 unsigned char APCI1710_INCREMENT ;
 int APCI1710_INCREMENTAL_COUNTER ;
 unsigned char APCI1710_QUADRUPLE_MODE ;
 unsigned char APCI1710_SIMPLE_MODE ;
 int DPRINTK (char*) ;
 TYPE_7__* devpriv ;
 int outl (int ,scalar_t__) ;

int i_APCI1710_InitCounter(struct comedi_device *dev,
 unsigned char b_ModulNbr,
 unsigned char b_CounterRange,
 unsigned char b_FirstCounterModus,
 unsigned char b_FirstCounterOption,
 unsigned char b_SecondCounterModus, unsigned char b_SecondCounterOption)
{
 int i_ReturnValue = 0;





 if ((devpriv->s_BoardInfos.
   dw_MolduleConfiguration[b_ModulNbr] & 0xFFFF0000UL) ==
  APCI1710_INCREMENTAL_COUNTER) {




  if (b_CounterRange == APCI1710_16BIT_COUNTER
   || b_CounterRange == APCI1710_32BIT_COUNTER) {




   if (b_FirstCounterModus == APCI1710_QUADRUPLE_MODE ||
    b_FirstCounterModus == APCI1710_DOUBLE_MODE ||
    b_FirstCounterModus == APCI1710_SIMPLE_MODE ||
    b_FirstCounterModus == APCI1710_DIRECT_MODE) {




    if ((b_FirstCounterModus == APCI1710_DIRECT_MODE
      && (b_FirstCounterOption ==
       APCI1710_INCREMENT
       || b_FirstCounterOption
       == APCI1710_DECREMENT))
     || (b_FirstCounterModus !=
      APCI1710_DIRECT_MODE
      && (b_FirstCounterOption ==
       APCI1710_HYSTERESIS_ON
       || b_FirstCounterOption
       ==
       APCI1710_HYSTERESIS_OFF)))
    {




     if (b_CounterRange ==
      APCI1710_16BIT_COUNTER) {




      if ((b_FirstCounterModus !=
        APCI1710_DIRECT_MODE
        &&
        (b_SecondCounterModus
         ==
         APCI1710_QUADRUPLE_MODE
         ||
         b_SecondCounterModus
         ==
         APCI1710_DOUBLE_MODE
         ||
         b_SecondCounterModus
         ==
         APCI1710_SIMPLE_MODE))
       || (b_FirstCounterModus
        ==
        APCI1710_DIRECT_MODE
        &&
        b_SecondCounterModus
        ==
        APCI1710_DIRECT_MODE))
      {




       if ((b_SecondCounterModus == APCI1710_DIRECT_MODE && (b_SecondCounterOption == APCI1710_INCREMENT || b_SecondCounterOption == APCI1710_DECREMENT)) || (b_SecondCounterModus != APCI1710_DIRECT_MODE && (b_SecondCounterOption == APCI1710_HYSTERESIS_ON || b_SecondCounterOption == APCI1710_HYSTERESIS_OFF))) {
        i_ReturnValue =
         0;
       } else {




        DPRINTK("The selected second counter operating option is wrong\n");
        i_ReturnValue =
         -7;
       }
      } else {




       DPRINTK("The selected second counter operating mode is wrong\n");
       i_ReturnValue = -6;
      }
     }
    } else {




     DPRINTK("The selected first counter operating option is wrong\n");
     i_ReturnValue = -5;
    }
   } else {



    DPRINTK("The selected first counter operating mode is wrong\n");
    i_ReturnValue = -4;
   }
  } else {




   DPRINTK("The selected counter range is wrong\n");
   i_ReturnValue = -3;
  }





  if (i_ReturnValue == 0) {




   if (b_CounterRange == APCI1710_32BIT_COUNTER) {
    devpriv->
     s_ModuleInfo[b_ModulNbr].
     s_SiemensCounterInfo.
     s_ModeRegister.
     s_ByteModeRegister.
     b_ModeRegister1 = b_CounterRange |
     b_FirstCounterModus |
     b_FirstCounterOption;
   } else {
    devpriv->
     s_ModuleInfo[b_ModulNbr].
     s_SiemensCounterInfo.
     s_ModeRegister.
     s_ByteModeRegister.
     b_ModeRegister1 = b_CounterRange |
     (b_FirstCounterModus & 0x5) |
     (b_FirstCounterOption & 0x20) |
     (b_SecondCounterModus & 0xA) |
     (b_SecondCounterOption & 0x40);





    if (b_FirstCounterModus == APCI1710_DIRECT_MODE) {
     devpriv->
      s_ModuleInfo[b_ModulNbr].
      s_SiemensCounterInfo.
      s_ModeRegister.
      s_ByteModeRegister.
      b_ModeRegister1 = devpriv->
      s_ModuleInfo[b_ModulNbr].
      s_SiemensCounterInfo.
      s_ModeRegister.
      s_ByteModeRegister.
      b_ModeRegister1 |
      APCI1710_DIRECT_MODE;
    }
   }





   outl(devpriv->s_ModuleInfo[b_ModulNbr].
    s_SiemensCounterInfo.
    s_ModeRegister.
    dw_ModeRegister1_2_3_4,
    devpriv->s_BoardInfos.
    ui_Address + 20 + (64 * b_ModulNbr));

   devpriv->
    s_ModuleInfo[b_ModulNbr].
    s_SiemensCounterInfo.
    s_InitFlag.b_CounterInit = 1;
  }
 } else {




  DPRINTK("The module is not a counter module\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
