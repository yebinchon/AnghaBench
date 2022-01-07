
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
struct TYPE_9__ {scalar_t__ ui_Address; } ;
struct TYPE_14__ {TYPE_6__* s_ModuleInfo; TYPE_2__ s_BoardInfos; } ;
struct TYPE_10__ {int b_ModeRegister1; } ;
struct TYPE_11__ {TYPE_3__ s_ByteModeRegister; } ;
struct TYPE_8__ {int b_CounterInit; int b_FrequencyMeasurementInit; int b_FrequencyMeasurementEnable; } ;
struct TYPE_12__ {TYPE_4__ s_ModeRegister; TYPE_1__ s_InitFlag; } ;
struct TYPE_13__ {TYPE_5__ s_SiemensCounterInfo; } ;


 int APCI1710_16BIT_COUNTER ;
 int DPRINTK (char*) ;
 TYPE_7__* devpriv ;
 unsigned int inl (scalar_t__) ;

int i_APCI1710_ReadFrequencyMeasurement(struct comedi_device *dev,
 unsigned char b_ModulNbr,
 unsigned char *pb_Status, unsigned char *pb_UDStatus, unsigned int *pul_ReadValue)
{
 int i_ReturnValue = 0;
 unsigned int ui_16BitValue;
 unsigned int dw_StatusReg;





 if (b_ModulNbr < 4) {




  if (devpriv->
   s_ModuleInfo[b_ModulNbr].
   s_SiemensCounterInfo.s_InitFlag.b_CounterInit == 1) {




   if (devpriv->
    s_ModuleInfo[b_ModulNbr].
    s_SiemensCounterInfo.
    s_InitFlag.b_FrequencyMeasurementInit == 1) {




    if (devpriv->
     s_ModuleInfo[b_ModulNbr].
     s_SiemensCounterInfo.
     s_InitFlag.
     b_FrequencyMeasurementEnable == 1) {




     dw_StatusReg =
      inl(devpriv->s_BoardInfos.
      ui_Address + 32 +
      (64 * b_ModulNbr));





     if (dw_StatusReg & 1) {
      *pb_Status = 2;
      *pb_UDStatus =
       (unsigned char) ((dw_StatusReg >>
        1) & 3);





      *pul_ReadValue =
       inl(devpriv->
       s_BoardInfos.
       ui_Address + 28 +
       (64 * b_ModulNbr));

      if (*pb_UDStatus == 0) {




       if ((devpriv->s_ModuleInfo[b_ModulNbr].s_SiemensCounterInfo.s_ModeRegister.s_ByteModeRegister.b_ModeRegister1 & APCI1710_16BIT_COUNTER) == APCI1710_16BIT_COUNTER) {




        if ((*pul_ReadValue & 0xFFFFU) != 0) {
         ui_16BitValue
          =
          (unsigned int)
          *
          pul_ReadValue
          &
          0xFFFFU;
         *pul_ReadValue
          =
          (*pul_ReadValue
          &
          0xFFFF0000UL)
          |
          (0xFFFFU
          -
          ui_16BitValue);
        }





        if ((*pul_ReadValue & 0xFFFF0000UL) != 0) {
         ui_16BitValue
          =
          (unsigned int)
          (
          (*pul_ReadValue
           >>
           16)
          &
          0xFFFFU);
         *pul_ReadValue
          =
          (*pul_ReadValue
          &
          0xFFFFUL)
          |
          (
          (0xFFFFU - ui_16BitValue) << 16);
        }
       } else {
        if (*pul_ReadValue != 0) {
         *pul_ReadValue
          =
          0xFFFFFFFFUL
          -
          *pul_ReadValue;
        }
       }
      } else {
       if (*pb_UDStatus == 1) {




        if ((*pul_ReadValue & 0xFFFF0000UL) != 0) {
         ui_16BitValue
          =
          (unsigned int)
          (
          (*pul_ReadValue
           >>
           16)
          &
          0xFFFFU);
         *pul_ReadValue
          =
          (*pul_ReadValue
          &
          0xFFFFUL)
          |
          (
          (0xFFFFU - ui_16BitValue) << 16);
        }
       } else {
        if (*pb_UDStatus
         == 2) {




         if ((*pul_ReadValue & 0xFFFFU) != 0) {
          ui_16BitValue
           =
           (unsigned int)
           *
           pul_ReadValue
           &
           0xFFFFU;
          *pul_ReadValue
           =
           (*pul_ReadValue
           &
           0xFFFF0000UL)
           |
           (0xFFFFU
           -
           ui_16BitValue);
         }
        }
       }
      }
     } else {
      *pb_Status = 1;
      *pb_UDStatus = 0;
     }
    } else {
     *pb_Status = 0;
     *pb_UDStatus = 0;
    }
   } else {




    DPRINTK("Frequency measurement logic not initialised\n");
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
