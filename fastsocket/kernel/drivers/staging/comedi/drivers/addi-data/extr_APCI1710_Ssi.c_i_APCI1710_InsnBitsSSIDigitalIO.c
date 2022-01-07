
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {int* dw_MolduleConfiguration; int ui_Address; } ;
struct TYPE_4__ {TYPE_1__ s_BoardInfos; } ;


 int APCI1710_SSI_COUNTER ;




 scalar_t__ CR_AREF (int ) ;
 scalar_t__ CR_CHAN (int ) ;
 int DPRINTK (char*) ;
 TYPE_2__* devpriv ;
 unsigned int inl (int ) ;
 int outl (int,int ) ;
 int printk (char*) ;

int i_APCI1710_InsnBitsSSIDigitalIO(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned int dw_StatusReg;
 unsigned char b_ModulNbr;
 unsigned char b_InputChannel;
 unsigned char *pb_ChannelStatus;
 unsigned char *pb_InputStatus;
 unsigned char b_IOType;
 i_ReturnValue = insn->n;
 b_ModulNbr = (unsigned char) CR_AREF(insn->chanspec);
 b_IOType = (unsigned char) data[0];





 if (b_ModulNbr < 4) {




  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    0xFFFF0000UL) == APCI1710_SSI_COUNTER) {
   switch (b_IOType) {
   case 128:




    outl(1, devpriv->s_BoardInfos.ui_Address + 16 +
     (64 * b_ModulNbr));
    break;

   case 129:




    outl(0, devpriv->s_BoardInfos.ui_Address + 16 +
     (64 * b_ModulNbr));
    break;

   case 131:




    b_InputChannel = (unsigned char) CR_CHAN(insn->chanspec);
    pb_ChannelStatus = (unsigned char *) &data[0];

    if (b_InputChannel <= 2) {




     dw_StatusReg =
      inl(devpriv->s_BoardInfos.
      ui_Address + (64 * b_ModulNbr));
     *pb_ChannelStatus =
      (unsigned char) (((~dw_StatusReg) >> (4 +
        b_InputChannel))
      & 1);
    } else {




     DPRINTK("Selected digital input error\n");
     i_ReturnValue = -4;
    }
    break;

   case 130:



    pb_InputStatus = (unsigned char *) &data[0];

    dw_StatusReg =
     inl(devpriv->s_BoardInfos.ui_Address +
     (64 * b_ModulNbr));
    *pb_InputStatus =
     (unsigned char) (((~dw_StatusReg) >> 4) & 7);
    break;

   default:
    printk("IO type wrong\n");

   }
  } else {




   DPRINTK("The module is not a SSI module\n");
   i_ReturnValue = -3;
  }
 } else {




  DPRINTK("Module number error\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
