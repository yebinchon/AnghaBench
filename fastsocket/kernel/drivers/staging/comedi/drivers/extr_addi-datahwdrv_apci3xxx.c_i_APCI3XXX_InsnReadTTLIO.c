
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int* ul_TTLPortConfiguration; scalar_t__ iobase; } ;


 scalar_t__ CR_CHAN (int ) ;
 TYPE_1__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int printk (char*,...) ;

int i_APCI3XXX_InsnReadTTLIO(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 unsigned char b_Channel = (unsigned char) CR_CHAN(insn->chanspec);
 int i_ReturnValue = insn->n;
 unsigned int *pls_ReadData = data;





 if (insn->n >= 1) {




  if (b_Channel < 8) {




   pls_ReadData[0] = inl(devpriv->iobase + 80);
   pls_ReadData[0] = (pls_ReadData[0] >> b_Channel) & 1;
  } else {




   if ((b_Channel > 7) && (b_Channel < 16)) {




    pls_ReadData[0] = inl(devpriv->iobase + 64);
    pls_ReadData[0] =
     (pls_ReadData[0] >> (b_Channel -
      8)) & 1;
   } else {




    if ((b_Channel > 15) && (b_Channel < 24)) {




     if ((devpriv->ul_TTLPortConfiguration[0]
       & 0xFF) == 0) {
      pls_ReadData[0] =
       inl(devpriv->iobase +
       96);
      pls_ReadData[0] =
       (pls_ReadData[0] >>
       (b_Channel - 16)) & 1;
     } else {
      pls_ReadData[0] =
       inl(devpriv->iobase +
       112);
      pls_ReadData[0] =
       (pls_ReadData[0] >>
       (b_Channel - 16)) & 1;
     }
    } else {




     i_ReturnValue = -3;
     printk("Channel %d selection error\n",
      b_Channel);
    }
   }
  }
 } else {




  printk("Buffer size error\n");
  i_ReturnValue = -101;
 }

 return i_ReturnValue;
}
