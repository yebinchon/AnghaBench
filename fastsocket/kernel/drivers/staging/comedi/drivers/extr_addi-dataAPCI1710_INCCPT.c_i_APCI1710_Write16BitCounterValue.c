
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ ui_Address; } ;
struct TYPE_10__ {TYPE_1__ s_BoardInfos; TYPE_4__* s_ModuleInfo; } ;
struct TYPE_7__ {int b_CounterInit; } ;
struct TYPE_8__ {TYPE_2__ s_InitFlag; } ;
struct TYPE_9__ {TYPE_3__ s_SiemensCounterInfo; } ;


 int DPRINTK (char*) ;
 TYPE_5__* devpriv ;
 int outl (unsigned int,scalar_t__) ;

int i_APCI1710_Write16BitCounterValue(struct comedi_device *dev,
 unsigned char b_ModulNbr, unsigned char b_SelectedCounter, unsigned int ui_WriteValue)
{
 int i_ReturnValue = 0;





 if (b_ModulNbr < 4) {




  if (devpriv->
   s_ModuleInfo[b_ModulNbr].
   s_SiemensCounterInfo.s_InitFlag.b_CounterInit == 1) {




   if (b_SelectedCounter < 2) {




    outl((unsigned int) ((unsigned int) (ui_WriteValue) << (16 *
       b_SelectedCounter)),
     devpriv->s_BoardInfos.ui_Address + 8 +
     (b_SelectedCounter * 4) +
     (64 * b_ModulNbr));
   } else {




    DPRINTK("The selected 16-Bit counter parameter is wrong\n");
    i_ReturnValue = -4;
   }
  } else {





   DPRINTK("Counter not initialised\n");
   i_ReturnValue = -3;
  }
 } else {




  DPRINTK("The selected module number parameter is wrong\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
