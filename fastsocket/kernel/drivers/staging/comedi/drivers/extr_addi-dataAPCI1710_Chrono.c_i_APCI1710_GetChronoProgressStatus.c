
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_7__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_8__ {TYPE_3__ s_BoardInfos; TYPE_2__* s_ModuleInfo; } ;
struct TYPE_5__ {int b_ChronoInit; } ;
struct TYPE_6__ {TYPE_1__ s_ChronoModuleInfo; } ;


 int APCI1710_CHRONOMETER ;
 int DPRINTK (char*) ;
 TYPE_4__* devpriv ;
 unsigned int inl (scalar_t__) ;

int i_APCI1710_GetChronoProgressStatus(struct comedi_device *dev,
 unsigned char b_ModulNbr, unsigned char *pb_ChronoStatus)
{
 int i_ReturnValue = 0;
 unsigned int dw_Status;





 if (b_ModulNbr < 4) {




  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    0xFFFF0000UL) == APCI1710_CHRONOMETER) {




   if (devpriv->
    s_ModuleInfo[b_ModulNbr].
    s_ChronoModuleInfo.b_ChronoInit == 1) {

    dw_Status = inl(devpriv->s_BoardInfos.
     ui_Address + 8 + (64 * b_ModulNbr));





    if ((dw_Status & 8) == 8) {




     *pb_ChronoStatus = 3;
    }
    else {




     if ((dw_Status & 2) == 2) {




      *pb_ChronoStatus = 2;
     }
     else {




      if ((dw_Status & 1) == 1) {




       *pb_ChronoStatus = 1;
      }
      else {




       *pb_ChronoStatus = 0;
      }
     }
    }
   } else {



    DPRINTK("Chronometer not initialised\n");
    i_ReturnValue = -4;
   }
  } else {



   DPRINTK("The module is not a Chronometer module\n");
   i_ReturnValue = -3;
  }
 } else {



  DPRINTK("Module number error\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
