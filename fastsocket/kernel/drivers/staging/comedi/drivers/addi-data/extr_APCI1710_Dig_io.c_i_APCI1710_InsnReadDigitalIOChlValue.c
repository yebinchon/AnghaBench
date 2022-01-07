
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_7__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_8__ {TYPE_3__ s_BoardInfos; TYPE_2__* s_ModuleInfo; } ;
struct TYPE_5__ {int b_DigitalInit; scalar_t__ b_ChannelAMode; scalar_t__ b_ChannelBMode; } ;
struct TYPE_6__ {TYPE_1__ s_DigitalIOInfo; } ;


 int APCI1710_DIGITAL_IO ;
 scalar_t__ CR_AREF (int ) ;
 scalar_t__ CR_CHAN (int ) ;
 int DPRINTK (char*) ;
 TYPE_4__* devpriv ;
 unsigned int inl (scalar_t__) ;

int i_APCI1710_InsnReadDigitalIOChlValue(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned int dw_StatusReg;
 unsigned char b_ModulNbr, b_InputChannel;
 unsigned char *pb_ChannelStatus;
 b_ModulNbr = (unsigned char) CR_AREF(insn->chanspec);
 b_InputChannel = (unsigned char) CR_CHAN(insn->chanspec);
 data[0] = 0;
 pb_ChannelStatus = (unsigned char *) &data[0];
 i_ReturnValue = insn->n;





 if (b_ModulNbr < 4) {




  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    0xFFFF0000UL) == APCI1710_DIGITAL_IO) {




   if (b_InputChannel <= 6) {




    if (devpriv->s_ModuleInfo[b_ModulNbr].
     s_DigitalIOInfo.b_DigitalInit == 1) {




     if (b_InputChannel > 4) {




      if (b_InputChannel == 5) {




       if (devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_DigitalIOInfo.
        b_ChannelAMode
        != 0) {




        i_ReturnValue =
         -6;
       }
      }
      else {




       if (devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_DigitalIOInfo.
        b_ChannelBMode
        != 0) {




        i_ReturnValue =
         -7;
       }
      }
     }





     if (i_ReturnValue >= 0) {
      dw_StatusReg =
       inl(devpriv->
       s_BoardInfos.
       ui_Address +
       (64 * b_ModulNbr));

      *pb_ChannelStatus =
       (unsigned char) ((dw_StatusReg ^
        0x1C) >>
       b_InputChannel) & 1;

     }
    } else {



     DPRINTK("Digital I/O not initialised\n");
     i_ReturnValue = -5;
    }
   } else {



    DPRINTK("Selected digital input error\n");
    i_ReturnValue = -4;
   }
  } else {



   DPRINTK("The module is not a digital I/O module\n");
   i_ReturnValue = -3;
  }
 } else {



  DPRINTK("Module number error\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
