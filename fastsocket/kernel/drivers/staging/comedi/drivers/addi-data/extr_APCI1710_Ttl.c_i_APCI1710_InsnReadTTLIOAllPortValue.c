
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
struct TYPE_5__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_8__ {TYPE_3__* s_ModuleInfo; TYPE_1__ s_BoardInfos; } ;
struct TYPE_6__ {int b_TTLInit; int* b_PortConfiguration; } ;
struct TYPE_7__ {TYPE_2__ s_TTLIOInfo; } ;


 int APCI1710_TTL_IO ;
 scalar_t__ CR_AREF (int ) ;
 int DPRINTK (char*) ;
 TYPE_4__* devpriv ;
 unsigned int inl (scalar_t__) ;

int i_APCI1710_InsnReadTTLIOAllPortValue(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned int dw_StatusReg;
 unsigned char b_ModulNbr;
 unsigned int *pul_PortValue;

 b_ModulNbr = (unsigned char) CR_AREF(insn->chanspec);
 i_ReturnValue = insn->n;
 pul_PortValue = (unsigned int *) &data[0];





 if (b_ModulNbr < 4) {




  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    0xFFFF0000UL) == APCI1710_TTL_IO) {




   if (devpriv->
    s_ModuleInfo[b_ModulNbr].
    s_TTLIOInfo.b_TTLInit == 1) {




    dw_StatusReg = inl(devpriv->s_BoardInfos.
     ui_Address + (64 * b_ModulNbr));





    if ((devpriv->s_BoardInfos.
      dw_MolduleConfiguration
      [b_ModulNbr] & 0xFFFF) ==
     0x3130) {
     *pul_PortValue =
      dw_StatusReg & 0xFFFFFFUL;
    } else {




     if (devpriv->s_ModuleInfo[b_ModulNbr].
      s_TTLIOInfo.
      b_PortConfiguration[0] == 1) {
      *pul_PortValue =
       dw_StatusReg &
       0x3FFFF00UL;
     }





     if (devpriv->
      s_ModuleInfo[b_ModulNbr].
      s_TTLIOInfo.
      b_PortConfiguration[1] == 1) {
      *pul_PortValue =
       dw_StatusReg &
       0x3FF00FFUL;
     }





     if (devpriv->
      s_ModuleInfo[b_ModulNbr].
      s_TTLIOInfo.
      b_PortConfiguration[2] == 1) {
      *pul_PortValue =
       dw_StatusReg &
       0x300FFFFUL;
     }





     if (devpriv->
      s_ModuleInfo[b_ModulNbr].
      s_TTLIOInfo.
      b_PortConfiguration[3] == 1) {
      *pul_PortValue =
       dw_StatusReg &
       0xFFFFFFUL;
     }
    }
   } else {



    DPRINTK("TTL I/O not initialised\n");
    i_ReturnValue = -5;
   }
  } else {



   DPRINTK("The module is not a TTL module\n");
   i_ReturnValue = -3;
  }
 } else {



  DPRINTK("Module number error\n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
