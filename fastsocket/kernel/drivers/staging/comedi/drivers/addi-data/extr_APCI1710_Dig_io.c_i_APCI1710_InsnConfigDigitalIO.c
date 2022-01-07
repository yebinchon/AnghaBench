
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
struct TYPE_5__ {int b_OutputMemoryEnabled; int b_DigitalInit; unsigned char b_ChannelAMode; unsigned char b_ChannelBMode; int dw_OutputMemory; } ;
struct TYPE_6__ {TYPE_1__ s_DigitalIOInfo; } ;




 int APCI1710_DIGITAL_IO ;
 scalar_t__ CR_AREF (int ) ;
 int DPRINTK (char*) ;
 TYPE_4__* devpriv ;
 int outl (unsigned int,int ) ;
 int printk (char*,int) ;

int i_APCI1710_InsnConfigDigitalIO(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned char b_ModulNbr, b_ChannelAMode, b_ChannelBMode;
 unsigned char b_MemoryOnOff, b_ConfigType;
 int i_ReturnValue = 0;
 unsigned int dw_WriteConfig = 0;

 b_ModulNbr = (unsigned char) CR_AREF(insn->chanspec);
 b_ConfigType = (unsigned char) data[0];
 b_ChannelAMode = (unsigned char) data[1];
 b_ChannelBMode = (unsigned char) data[2];
 b_MemoryOnOff = (unsigned char) data[1];
 i_ReturnValue = insn->n;





 if (b_ModulNbr >= 4) {
  DPRINTK("Module Number invalid\n");
  i_ReturnValue = -2;
  return i_ReturnValue;
 }
 switch (b_ConfigType) {
 case 128:

  if (b_MemoryOnOff)
  {




   devpriv->s_ModuleInfo[b_ModulNbr].
    s_DigitalIOInfo.b_OutputMemoryEnabled = 1;




   devpriv->s_ModuleInfo[b_ModulNbr].
    s_DigitalIOInfo.dw_OutputMemory = 0;
  } else
  {




   devpriv->s_ModuleInfo[b_ModulNbr].
    s_DigitalIOInfo.b_OutputMemoryEnabled = 0;
  }
  break;

 case 129:





  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    0xFFFF0000UL) == APCI1710_DIGITAL_IO) {





   if ((b_ChannelAMode == 0) || (b_ChannelAMode == 1)) {




    if ((b_ChannelBMode == 0)
     || (b_ChannelBMode == 1)) {
     devpriv->s_ModuleInfo[b_ModulNbr].
      s_DigitalIOInfo.b_DigitalInit =
      1;





     devpriv->s_ModuleInfo[b_ModulNbr].
      s_DigitalIOInfo.
      b_ChannelAMode = b_ChannelAMode;





     devpriv->s_ModuleInfo[b_ModulNbr].
      s_DigitalIOInfo.
      b_ChannelBMode = b_ChannelBMode;





     dw_WriteConfig =
      (unsigned int) (b_ChannelAMode |
      (b_ChannelBMode * 2));





     outl(dw_WriteConfig,
      devpriv->s_BoardInfos.
      ui_Address + 4 +
      (64 * b_ModulNbr));

    } else {



     DPRINTK("Bi-directional channel B configuration error\n");
     i_ReturnValue = -5;
    }

   } else {



    DPRINTK("Bi-directional channel A configuration error\n");
    i_ReturnValue = -4;

   }

  } else {



   DPRINTK("The module is not a digital I/O module\n");
   i_ReturnValue = -3;
  }
 }
 printk("Return Value %d\n", i_ReturnValue);
 return i_ReturnValue;
}
