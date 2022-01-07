
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
struct TYPE_9__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_14__ {TYPE_6__* s_ModuleInfo; TYPE_2__ s_BoardInfos; } ;
struct TYPE_8__ {int b_CounterInit; int b_FrequencyMeasurementInit; } ;
struct TYPE_10__ {int b_ModeRegister4; } ;
struct TYPE_11__ {TYPE_3__ s_ByteModeRegister; } ;
struct TYPE_12__ {TYPE_1__ s_InitFlag; TYPE_4__ s_ModeRegister; } ;
struct TYPE_13__ {TYPE_5__ s_SiemensCounterInfo; } ;


 unsigned char APCI1710_30MHZ ;
 unsigned char APCI1710_33MHZ ;
 unsigned char APCI1710_40MHZ ;
 int APCI1710_DISABLE_40MHZ_FREQUENCY ;
 int APCI1710_ENABLE_40MHZ_FREQUENCY ;
 int DPRINTK (char*) ;
 TYPE_7__* devpriv ;
 int fpu_begin () ;
 int fpu_end () ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

int i_APCI1710_InitFrequencyMeasurement(struct comedi_device *dev,
 unsigned char b_ModulNbr,
 unsigned char b_PCIInputClock,
 unsigned char b_TimingUnity,
 unsigned int ul_TimingInterval, unsigned int *pul_RealTimingInterval)
{
 int i_ReturnValue = 0;
 unsigned int ul_TimerValue = 0;
 double d_RealTimingInterval;
 unsigned int dw_Status = 0;





 if (b_ModulNbr < 4) {




  if (devpriv->
   s_ModuleInfo[b_ModulNbr].
   s_SiemensCounterInfo.s_InitFlag.b_CounterInit == 1) {




   if ((b_PCIInputClock == APCI1710_30MHZ) ||
    (b_PCIInputClock == APCI1710_33MHZ) ||
    (b_PCIInputClock == APCI1710_40MHZ)) {




    if (b_TimingUnity <= 2) {




     if (((b_PCIInputClock == APCI1710_30MHZ)
       && (b_TimingUnity == 0)
       && (ul_TimingInterval >=
        266)
       && (ul_TimingInterval <=
        8738133UL))
      || ((b_PCIInputClock ==
        APCI1710_30MHZ)
       && (b_TimingUnity == 1)
       && (ul_TimingInterval >=
        1)
       && (ul_TimingInterval <=
        8738UL))
      || ((b_PCIInputClock ==
        APCI1710_30MHZ)
       && (b_TimingUnity == 2)
       && (ul_TimingInterval >=
        1)
       && (ul_TimingInterval <=
        8UL))
      || ((b_PCIInputClock ==
        APCI1710_33MHZ)
       && (b_TimingUnity == 0)
       && (ul_TimingInterval >=
        242)
       && (ul_TimingInterval <=
        7943757UL))
      || ((b_PCIInputClock ==
        APCI1710_33MHZ)
       && (b_TimingUnity == 1)
       && (ul_TimingInterval >=
        1)
       && (ul_TimingInterval <=
        7943UL))
      || ((b_PCIInputClock ==
        APCI1710_33MHZ)
       && (b_TimingUnity == 2)
       && (ul_TimingInterval >=
        1)
       && (ul_TimingInterval <=
        7UL))
      || ((b_PCIInputClock ==
        APCI1710_40MHZ)
       && (b_TimingUnity == 0)
       && (ul_TimingInterval >=
        200)
       && (ul_TimingInterval <=
        6553500UL))
      || ((b_PCIInputClock ==
        APCI1710_40MHZ)
       && (b_TimingUnity == 1)
       && (ul_TimingInterval >=
        1)
       && (ul_TimingInterval <=
        6553UL))
      || ((b_PCIInputClock ==
        APCI1710_40MHZ)
       && (b_TimingUnity == 2)
       && (ul_TimingInterval >=
        1)
       && (ul_TimingInterval <=
        6UL))) {




      if (b_PCIInputClock ==
       APCI1710_40MHZ) {




       if ((devpriv->s_BoardInfos.dw_MolduleConfiguration[b_ModulNbr] & 0xFFFF) >= 0x3135) {
        dw_Status =
         inl
         (devpriv->
         s_BoardInfos.
         ui_Address
         + 36 +
         (64 * b_ModulNbr));





        if ((dw_Status & 1) != 1) {




         DPRINTK("40MHz quartz not on board\n");
         i_ReturnValue
          =
          -7;
        }
       } else {



        DPRINTK("40MHz quartz not on board\n");
        i_ReturnValue =
         -7;
       }
      }





      if (i_ReturnValue == 0) {




       if ((devpriv->s_BoardInfos.dw_MolduleConfiguration[b_ModulNbr] & 0xFFFF) >= 0x3131) {





        if (b_PCIInputClock == APCI1710_40MHZ) {




         devpriv->
          s_ModuleInfo
          [b_ModulNbr].
          s_SiemensCounterInfo.
          s_ModeRegister.
          s_ByteModeRegister.
          b_ModeRegister4
          =
          devpriv->
          s_ModuleInfo
          [b_ModulNbr].
          s_SiemensCounterInfo.
          s_ModeRegister.
          s_ByteModeRegister.
          b_ModeRegister4
          |
          APCI1710_ENABLE_40MHZ_FREQUENCY;
        }
        else {




         devpriv->
          s_ModuleInfo
          [b_ModulNbr].
          s_SiemensCounterInfo.
          s_ModeRegister.
          s_ByteModeRegister.
          b_ModeRegister4
          =
          devpriv->
          s_ModuleInfo
          [b_ModulNbr].
          s_SiemensCounterInfo.
          s_ModeRegister.
          s_ByteModeRegister.
          b_ModeRegister4
          &
          APCI1710_DISABLE_40MHZ_FREQUENCY;

        }





        fpu_begin();
        switch (b_TimingUnity) {




        case 0:





         ul_TimerValue
          =
          (unsigned int)
          (ul_TimingInterval
          *
          (0.00025 * b_PCIInputClock));





         if ((double)((double)ul_TimingInterval * (0.00025 * (double)b_PCIInputClock)) >= ((double)((double)ul_TimerValue + 0.5))) {
          ul_TimerValue
           =
           ul_TimerValue
           +
           1;
         }





         *pul_RealTimingInterval
          =
          (unsigned int)
          (ul_TimerValue
          /
          (0.00025 * (double)b_PCIInputClock));
         d_RealTimingInterval
          =
          (double)
          ul_TimerValue
          /
          (0.00025
          *
          (double)
          b_PCIInputClock);

         if ((double)((double)ul_TimerValue / (0.00025 * (double)b_PCIInputClock)) >= (double)((double)*pul_RealTimingInterval + 0.5)) {
          *pul_RealTimingInterval
           =
           *pul_RealTimingInterval
           +
           1;
         }

         ul_TimingInterval
          =
          ul_TimingInterval
          -
          1;
         ul_TimerValue
          =
          ul_TimerValue
          -
          2;

         break;





        case 1:





         ul_TimerValue
          =
          (unsigned int)
          (ul_TimingInterval
          *
          (0.25 * b_PCIInputClock));





         if ((double)((double)ul_TimingInterval * (0.25 * (double)b_PCIInputClock)) >= ((double)((double)ul_TimerValue + 0.5))) {
          ul_TimerValue
           =
           ul_TimerValue
           +
           1;
         }





         *pul_RealTimingInterval
          =
          (unsigned int)
          (ul_TimerValue
          /
          (0.25 * (double)b_PCIInputClock));
         d_RealTimingInterval
          =
          (double)
          ul_TimerValue
          /
          (
          (double)
          0.25
          *
          (double)
          b_PCIInputClock);

         if ((double)((double)ul_TimerValue / (0.25 * (double)b_PCIInputClock)) >= (double)((double)*pul_RealTimingInterval + 0.5)) {
          *pul_RealTimingInterval
           =
           *pul_RealTimingInterval
           +
           1;
         }

         ul_TimingInterval
          =
          ul_TimingInterval
          -
          1;
         ul_TimerValue
          =
          ul_TimerValue
          -
          2;

         break;





        case 2:





         ul_TimerValue
          =
          ul_TimingInterval
          *
          (250.0
          *
          b_PCIInputClock);





         if ((double)((double)ul_TimingInterval * (250.0 * (double)b_PCIInputClock)) >= ((double)((double)ul_TimerValue + 0.5))) {
          ul_TimerValue
           =
           ul_TimerValue
           +
           1;
         }





         *pul_RealTimingInterval
          =
          (unsigned int)
          (ul_TimerValue
          /
          (250.0 * (double)b_PCIInputClock));
         d_RealTimingInterval
          =
          (double)
          ul_TimerValue
          /
          (250.0
          *
          (double)
          b_PCIInputClock);

         if ((double)((double)ul_TimerValue / (250.0 * (double)b_PCIInputClock)) >= (double)((double)*pul_RealTimingInterval + 0.5)) {
          *pul_RealTimingInterval
           =
           *pul_RealTimingInterval
           +
           1;
         }

         ul_TimingInterval
          =
          ul_TimingInterval
          -
          1;
         ul_TimerValue
          =
          ul_TimerValue
          -
          2;

         break;
        }

        fpu_end();




        outl(ul_TimerValue, devpriv->s_BoardInfos.ui_Address + 32 + (64 * b_ModulNbr));





        devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_SiemensCounterInfo.
         s_InitFlag.
         b_FrequencyMeasurementInit
         = 1;
       } else {




        DPRINTK("Counter not initialised\n");
        i_ReturnValue =
         -3;
       }
      }
     } else {




      DPRINTK("Base timing selection is wrong\n");
      i_ReturnValue = -6;
     }
    } else {




     DPRINTK("Timing unity selection is wrong\n");
     i_ReturnValue = -5;
    }
   } else {




    DPRINTK("The selected PCI input clock is wrong\n");
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
