
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_3__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_4__ {TYPE_1__ s_BoardInfos; } ;


 int APCI1710_INCREMENTAL_COUNTER ;
 int DPRINTK (char*) ;
 TYPE_2__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

int i_APCI1710_CounterAutoTest(struct comedi_device *dev, unsigned char *pb_TestStatus)
{
 unsigned char b_ModulCpt = 0;
 int i_ReturnValue = 0;
 unsigned int dw_LathchValue;

 *pb_TestStatus = 0;





 if ((devpriv->s_BoardInfos.
   dw_MolduleConfiguration[0] & 0xFFFF0000UL) ==
  APCI1710_INCREMENTAL_COUNTER
  || (devpriv->s_BoardInfos.
   dw_MolduleConfiguration[1] & 0xFFFF0000UL) ==
  APCI1710_INCREMENTAL_COUNTER
  || (devpriv->s_BoardInfos.
   dw_MolduleConfiguration[2] & 0xFFFF0000UL) ==
  APCI1710_INCREMENTAL_COUNTER
  || (devpriv->s_BoardInfos.
   dw_MolduleConfiguration[3] & 0xFFFF0000UL) ==
  APCI1710_INCREMENTAL_COUNTER) {
  for (b_ModulCpt = 0; b_ModulCpt < 4; b_ModulCpt++) {




   if ((devpriv->s_BoardInfos.
     dw_MolduleConfiguration[b_ModulCpt] &
     0xFFFF0000UL) ==
    APCI1710_INCREMENTAL_COUNTER) {




    outl(3, devpriv->s_BoardInfos.
     ui_Address + 16 + (64 * b_ModulCpt));





    outl(1, devpriv->s_BoardInfos.
     ui_Address + (64 * b_ModulCpt));





    dw_LathchValue = inl(devpriv->s_BoardInfos.
     ui_Address + 4 + (64 * b_ModulCpt));

    if ((dw_LathchValue & 0xFF) !=
     ((dw_LathchValue >> 8) & 0xFF)
     && (dw_LathchValue & 0xFF) !=
     ((dw_LathchValue >> 16) & 0xFF)
     && (dw_LathchValue & 0xFF) !=
     ((dw_LathchValue >> 24) & 0xFF)) {
     *pb_TestStatus =
      *pb_TestStatus | (1 <<
      b_ModulCpt);
    }





    outl(0, devpriv->s_BoardInfos.
     ui_Address + 16 + (64 * b_ModulCpt));
   }
  }
 } else {




  DPRINTK("No counter module found\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
