
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
struct TYPE_9__ {scalar_t__ ui_Address; } ;
struct TYPE_10__ {TYPE_4__ s_BoardInfos; TYPE_3__* s_ModuleInfo; } ;
struct TYPE_6__ {int b_CounterInit; int b_IndexInterruptOccur; } ;
struct TYPE_7__ {TYPE_1__ s_InitFlag; } ;
struct TYPE_8__ {TYPE_2__ s_SiemensCounterInfo; } ;


 int DPRINTK (char*) ;
 TYPE_5__* devpriv ;
 unsigned int inl (scalar_t__) ;

int i_APCI1710_GetInterruptUDLatchedStatus(struct comedi_device *dev,
 unsigned char b_ModulNbr, unsigned char *pb_UDStatus)
{
 int i_ReturnValue = 0;
 unsigned int dw_StatusReg = 0;





 if (b_ModulNbr < 4) {




  if (devpriv->
   s_ModuleInfo[b_ModulNbr].
   s_SiemensCounterInfo.s_InitFlag.b_CounterInit == 1) {




   if (devpriv->
    s_ModuleInfo[b_ModulNbr].
    s_SiemensCounterInfo.
    s_InitFlag.b_IndexInterruptOccur == 1) {
    devpriv->
     s_ModuleInfo[b_ModulNbr].
     s_SiemensCounterInfo.
     s_InitFlag.b_IndexInterruptOccur = 0;

    dw_StatusReg = inl(devpriv->s_BoardInfos.
     ui_Address + 12 + (64 * b_ModulNbr));

    *pb_UDStatus = (unsigned char) ((dw_StatusReg >> 1) & 1);
   } else {




    *pb_UDStatus = 2;
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
