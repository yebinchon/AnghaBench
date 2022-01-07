
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_3__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_4__ {TYPE_1__ s_BoardInfos; } ;


 int APCI1710_PWM ;
 int DPRINTK (char*) ;
 TYPE_2__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int outl (int ,scalar_t__) ;

int i_APCI1710_DisablePWM(struct comedi_device *dev, unsigned char b_ModulNbr, unsigned char b_PWM)
{
 int i_ReturnValue = 0;
 unsigned int dw_Status;





 if (b_ModulNbr < 4) {




  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    0xFFFF0000UL) == APCI1710_PWM) {




   if (b_PWM <= 1) {




    dw_Status = inl(devpriv->s_BoardInfos.
     ui_Address + 12 + (20 * b_PWM) +
     (64 * b_ModulNbr));

    if (dw_Status & 0x10) {




     if (dw_Status & 0x1) {



      outl(0, devpriv->s_BoardInfos.
       ui_Address + 12 +
       (20 * b_PWM) +
       (64 * b_ModulNbr));
     }
     else {



      DPRINTK("PWM not enabled\n");
      i_ReturnValue = -6;
     }
    }
    else {



     DPRINTK(" PWM not initialised\n");
     i_ReturnValue = -5;
    }
   }
   else {



    DPRINTK("Tor PWM selection is wrong\n");
    i_ReturnValue = -4;
   }
  } else {



   DPRINTK("The module is not a PWM module\n");
   i_ReturnValue = -3;
  }
 } else {



  DPRINTK("Module number error\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
