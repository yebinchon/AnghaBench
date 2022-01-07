
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
struct TYPE_9__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_10__ {TYPE_4__ s_BoardInfos; TYPE_3__* s_ModuleInfo; } ;
struct TYPE_7__ {TYPE_1__* s_82X54TimerInfo; } ;
struct TYPE_8__ {TYPE_2__ s_82X54ModuleInfo; } ;
struct TYPE_6__ {int b_82X54Init; } ;


 int APCI1710_82X54_TIMER ;
 int DPRINTK (char*) ;
 TYPE_5__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

int i_APCI1710_ReadTimerValue(struct comedi_device *dev,
         unsigned char b_ModulNbr, unsigned char b_TimerNbr,
         unsigned int *pul_TimerValue)
{
 int i_ReturnValue = 0;


 if (b_ModulNbr < 4) {

  if ((devpriv->s_BoardInfos.
       dw_MolduleConfiguration[b_ModulNbr] &
       0xFFFF0000UL) == APCI1710_82X54_TIMER) {

   if (b_TimerNbr <= 2) {

    if (devpriv->
        s_ModuleInfo[b_ModulNbr].
        s_82X54ModuleInfo.
        s_82X54TimerInfo[b_TimerNbr].
        b_82X54Init == 1) {

     outl((2 << b_TimerNbr) | 0xD0,
          devpriv->s_BoardInfos.
          ui_Address + 12 +
          (64 * b_ModulNbr));


     *pul_TimerValue =
         inl(devpriv->s_BoardInfos.
      ui_Address + (b_TimerNbr * 4) +
      (64 * b_ModulNbr));
    } else {

     DPRINTK("Timer not initialised see function\n");
     i_ReturnValue = -5;
    }
   } else {

    DPRINTK("Timer selection wrong\n");
    i_ReturnValue = -3;
   }
  } else {

   DPRINTK("The module is not a TIMER module\n");
   i_ReturnValue = -4;
  }
 } else {

  DPRINTK("Module number error\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
