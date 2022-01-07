
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_9__ {int ui_Address; } ;
struct TYPE_10__ {TYPE_4__ s_BoardInfos; TYPE_3__* s_ModuleInfo; } ;
struct TYPE_7__ {unsigned int dw_StatusRegister; TYPE_1__* s_PulseEncoderInfo; } ;
struct TYPE_8__ {TYPE_2__ s_PulseEncoderModuleInfo; } ;
struct TYPE_6__ {int b_PulseEncoderInit; } ;




 scalar_t__ CR_AREF (int ) ;
 int DPRINTK (char*) ;
 TYPE_5__* devpriv ;
 unsigned int inl (int ) ;
 int outl (unsigned int,int ) ;

int i_APCI1710_InsnBitsReadWritePulseEncoder(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned int dw_StatusRegister;
 unsigned char b_ModulNbr;
 unsigned char b_PulseEncoderNbr;
 unsigned char *pb_Status;
 unsigned char b_Type;
 unsigned int *pul_ReadValue;
 unsigned int ul_WriteValue;

 i_ReturnValue = insn->n;
 b_ModulNbr = (unsigned char) CR_AREF(insn->chanspec);
 b_Type = (unsigned char) data[0];
 b_PulseEncoderNbr = (unsigned char) data[1];
 pb_Status = (unsigned char *) &data[0];
 pul_ReadValue = (unsigned int *) &data[1];





 if (b_ModulNbr <= 3) {




  if (b_PulseEncoderNbr <= 3) {




   if (devpriv->s_ModuleInfo[b_ModulNbr].
    s_PulseEncoderModuleInfo.
    s_PulseEncoderInfo[b_PulseEncoderNbr].
    b_PulseEncoderInit == 1) {

    switch (b_Type) {
    case 129:




     dw_StatusRegister =
      inl(devpriv->s_BoardInfos.
      ui_Address + 16 +
      (64 * b_ModulNbr));

     devpriv->s_ModuleInfo[b_ModulNbr].
      s_PulseEncoderModuleInfo.
      dw_StatusRegister = devpriv->
      s_ModuleInfo[b_ModulNbr].
      s_PulseEncoderModuleInfo.
      dw_StatusRegister |
      dw_StatusRegister;

     *pb_Status =
      (unsigned char) (devpriv->
      s_ModuleInfo[b_ModulNbr].
      s_PulseEncoderModuleInfo.
      dw_StatusRegister >> (1 +
       b_PulseEncoderNbr)) & 1;

     devpriv->s_ModuleInfo[b_ModulNbr].
      s_PulseEncoderModuleInfo.
      dw_StatusRegister =
      devpriv->
      s_ModuleInfo[b_ModulNbr].
      s_PulseEncoderModuleInfo.
      dw_StatusRegister &
      (0xFFFFFFFFUL - (1 << (1 +
        b_PulseEncoderNbr)));





     *pul_ReadValue =
      inl(devpriv->s_BoardInfos.
      ui_Address +
      (4 * b_PulseEncoderNbr) +
      (64 * b_ModulNbr));
     break;

    case 128:
     ul_WriteValue = (unsigned int) data[2];




     outl(ul_WriteValue,
      devpriv->s_BoardInfos.
      ui_Address +
      (4 * b_PulseEncoderNbr) +
      (64 * b_ModulNbr));

    }
   } else {




    DPRINTK("Pulse encoder not initialised\n");
    i_ReturnValue = -4;
   }
  } else {




   DPRINTK("Pulse encoder selection is wrong\n");
   i_ReturnValue = -3;
  }
 } else {




  DPRINTK("Module selection is wrong\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
