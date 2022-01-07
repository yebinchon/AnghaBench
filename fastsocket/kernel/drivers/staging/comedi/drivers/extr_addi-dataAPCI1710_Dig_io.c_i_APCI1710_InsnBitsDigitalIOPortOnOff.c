
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
struct TYPE_7__ {int* dw_MolduleConfiguration; int ui_Address; } ;
struct TYPE_8__ {TYPE_3__ s_BoardInfos; TYPE_2__* s_ModuleInfo; } ;
struct TYPE_5__ {int b_DigitalInit; int b_ChannelAMode; int b_ChannelBMode; int b_OutputMemoryEnabled; unsigned char dw_OutputMemory; } ;
struct TYPE_6__ {TYPE_1__ s_DigitalIOInfo; } ;


 int APCI1710_DIGITAL_IO ;




 scalar_t__ CR_AREF (int ) ;
 int DPRINTK (char*) ;
 TYPE_4__* devpriv ;
 unsigned int inl (int ) ;
 int outl (unsigned int,int ) ;

int i_APCI1710_InsnBitsDigitalIOPortOnOff(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned int dw_WriteValue = 0;
 unsigned int dw_StatusReg;
 unsigned char b_ModulNbr, b_PortValue;
 unsigned char b_PortOperation, b_PortOnOFF;

 unsigned char *pb_PortValue;

 b_ModulNbr = (unsigned char) CR_AREF(insn->chanspec);
 b_PortOperation = (unsigned char) data[0];
 b_PortOnOFF = (unsigned char) data[1];
 b_PortValue = (unsigned char) data[2];
 i_ReturnValue = insn->n;
 pb_PortValue = (unsigned char *) &data[0];


 switch (b_PortOperation) {
 case 131:




  if (b_ModulNbr < 4) {




   if ((devpriv->s_BoardInfos.
     dw_MolduleConfiguration[b_ModulNbr] &
     0xFFFF0000UL) == APCI1710_DIGITAL_IO) {




    if (devpriv->s_ModuleInfo[b_ModulNbr].
     s_DigitalIOInfo.b_DigitalInit == 1) {
     dw_StatusReg =
      inl(devpriv->s_BoardInfos.
      ui_Address + (64 * b_ModulNbr));
     *pb_PortValue =
      (unsigned char) (dw_StatusReg ^ 0x1C);

    } else {




     i_ReturnValue = -4;
    }
   } else {




    i_ReturnValue = -3;
   }
  } else {




   i_ReturnValue = -2;
  }

  break;

 case 128:




  if (b_ModulNbr < 4) {




   if ((devpriv->s_BoardInfos.
     dw_MolduleConfiguration[b_ModulNbr] &
     0xFFFF0000UL) == APCI1710_DIGITAL_IO) {




    if (devpriv->s_ModuleInfo[b_ModulNbr].
     s_DigitalIOInfo.b_DigitalInit == 1) {




     if (b_PortValue <= 7) {
      if ((b_PortValue & 2) == 2) {
       if (devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_DigitalIOInfo.
        b_ChannelAMode
        != 1) {




        i_ReturnValue =
         -6;
       }
      }





      if ((b_PortValue & 4) == 4) {
       if (devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_DigitalIOInfo.
        b_ChannelBMode
        != 1) {




        i_ReturnValue =
         -7;
       }
      }





      if (i_ReturnValue >= 0) {



       switch (b_PortOnOFF) {




       case 129:





        if (devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_DigitalIOInfo.
         b_OutputMemoryEnabled
         == 1) {
         dw_WriteValue
          =
          devpriv->
          s_ModuleInfo
          [b_ModulNbr].
          s_DigitalIOInfo.
          dw_OutputMemory
          |
          b_PortValue;

         devpriv->
          s_ModuleInfo
          [b_ModulNbr].
          s_DigitalIOInfo.
          dw_OutputMemory
          =
          dw_WriteValue;
        } else {
         dw_WriteValue
          =
          b_PortValue;
        }
        break;


       case 130:





        if (devpriv->
         s_ModuleInfo
         [b_ModulNbr].
         s_DigitalIOInfo.
         b_OutputMemoryEnabled
         == 1) {
         dw_WriteValue
          =
          devpriv->
          s_ModuleInfo
          [b_ModulNbr].
          s_DigitalIOInfo.
          dw_OutputMemory
          &
          (0xFFFFFFFFUL
          -
          b_PortValue);

         devpriv->
          s_ModuleInfo
          [b_ModulNbr].
          s_DigitalIOInfo.
          dw_OutputMemory
          =
          dw_WriteValue;
        } else {




         i_ReturnValue
          =
          -8;
        }
       }
       outl(dw_WriteValue,
        devpriv->
        s_BoardInfos.
        ui_Address +
        (64 * b_ModulNbr));
      }
     } else {




      i_ReturnValue = -4;
     }
    } else {




     i_ReturnValue = -5;
    }
   } else {




    i_ReturnValue = -3;
   }
  } else {




   i_ReturnValue = -2;
  }
  break;

 default:
  i_ReturnValue = -9;
  DPRINTK("NO INPUT/OUTPUT specified\n");
 }
 return i_ReturnValue;
}
