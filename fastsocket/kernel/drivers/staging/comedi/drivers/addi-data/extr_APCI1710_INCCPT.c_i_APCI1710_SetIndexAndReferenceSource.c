
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_7__ {int* dw_MolduleConfiguration; } ;
struct TYPE_12__ {TYPE_5__* s_ModuleInfo; TYPE_1__ s_BoardInfos; } ;
struct TYPE_8__ {int b_ModeRegister4; } ;
struct TYPE_9__ {TYPE_2__ s_ByteModeRegister; } ;
struct TYPE_10__ {TYPE_3__ s_ModeRegister; } ;
struct TYPE_11__ {TYPE_4__ s_SiemensCounterInfo; } ;


 int APCI1710_DEFAULT_INDEX_RFERENCE ;
 int APCI1710_INCREMENTAL_COUNTER ;
 int APCI1710_INVERT_INDEX_RFERENCE ;
 unsigned char APCI1710_SOURCE_0 ;
 unsigned char APCI1710_SOURCE_1 ;
 int DPRINTK (char*) ;
 TYPE_6__* devpriv ;

int i_APCI1710_SetIndexAndReferenceSource(struct comedi_device *dev,
 unsigned char b_ModulNbr, unsigned char b_SourceSelection)
{
 int i_ReturnValue = 0;





 if (b_ModulNbr < 4) {




  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    0xFFFF0000UL) == APCI1710_INCREMENTAL_COUNTER) {




   if ((devpriv->s_BoardInfos.
     dw_MolduleConfiguration[b_ModulNbr] &
     0xFFFF) >= 0x3135) {




    if (b_SourceSelection == APCI1710_SOURCE_0 ||
     b_SourceSelection == APCI1710_SOURCE_1)
    {




     if (b_SourceSelection ==
      APCI1710_SOURCE_1) {




      devpriv->
       s_ModuleInfo
       [b_ModulNbr].
       s_SiemensCounterInfo.
       s_ModeRegister.
       s_ByteModeRegister.
       b_ModeRegister4 =
       devpriv->
       s_ModuleInfo
       [b_ModulNbr].
       s_SiemensCounterInfo.
       s_ModeRegister.
       s_ByteModeRegister.
       b_ModeRegister4 |
       APCI1710_INVERT_INDEX_RFERENCE;
     } else {




      devpriv->
       s_ModuleInfo
       [b_ModulNbr].
       s_SiemensCounterInfo.
       s_ModeRegister.
       s_ByteModeRegister.
       b_ModeRegister4 =
       devpriv->
       s_ModuleInfo
       [b_ModulNbr].
       s_SiemensCounterInfo.
       s_ModeRegister.
       s_ByteModeRegister.
       b_ModeRegister4 &
       APCI1710_DEFAULT_INDEX_RFERENCE;
     }
    }
    else {




     DPRINTK("The source selection is wrong\n");
     i_ReturnValue = -4;
    }
   } else {




    DPRINTK("The module is not a counter module\n");
    i_ReturnValue = -3;
   }
  } else {




   DPRINTK("The module is not a counter module\n");
   i_ReturnValue = -3;
  }
 } else {




  DPRINTK("The selected module number is wrong\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
