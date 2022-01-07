
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
 int outl (unsigned int,scalar_t__) ;
 int printk (char*,...) ;

int i_APCI3XXX_InsnWriteTTLIO(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = insn->n;
 unsigned char b_Channel = (unsigned char) CR_CHAN(insn->chanspec);
 unsigned char b_State = 0;
 unsigned int dw_Status = 0;





 if (insn->n >= 1) {
  b_State = (unsigned char) data[0];





  if (b_Channel < 8) {




   dw_Status = inl(devpriv->iobase + 80);
   dw_Status =
    (dw_Status & (0xFF -
     (1 << b_Channel))) | ((b_State & 1) <<
    b_Channel);
   outl(dw_Status, devpriv->iobase + 80);
  } else {




   if ((b_Channel > 15) && (b_Channel < 24)) {




    if ((devpriv->ul_TTLPortConfiguration[0] & 0xFF)
     == 0xFF) {




     dw_Status = inl(devpriv->iobase + 112);
     dw_Status =
      (dw_Status & (0xFF -
       (1 << (b_Channel -
         16)))) |
      ((b_State & 1) << (b_Channel -
       16));
     outl(dw_Status, devpriv->iobase + 112);
    } else {




     i_ReturnValue = -3;
     printk("Channel %d selection error\n",
      b_Channel);
    }
   } else {




    i_ReturnValue = -3;
    printk("Channel %d selection error\n",
     b_Channel);
   }
  }
 } else {




  printk("Buffer size error\n");
  i_ReturnValue = -101;
 }

 return i_ReturnValue;
}
