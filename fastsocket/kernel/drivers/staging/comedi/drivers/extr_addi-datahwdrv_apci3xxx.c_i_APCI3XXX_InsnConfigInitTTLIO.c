
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ul_TTLPortConfiguration; scalar_t__ iobase; } ;


 unsigned char APCI3XXX_TTL_INIT_DIRECTION_PORT2 ;
 TYPE_1__* devpriv ;
 int outl (unsigned int,scalar_t__) ;
 int printk (char*) ;

int i_APCI3XXX_InsnConfigInitTTLIO(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = insn->n;
 unsigned char b_Command = 0;





 if (insn->n >= 1) {




  b_Command = (unsigned char) data[0];





  if (b_Command == APCI3XXX_TTL_INIT_DIRECTION_PORT2) {




   if ((b_Command == APCI3XXX_TTL_INIT_DIRECTION_PORT2)
    && (insn->n != 2)) {




    printk("Buffer size error\n");
    i_ReturnValue = -101;
   }
  } else {




   printk("Command selection error\n");
   i_ReturnValue = -100;
  }
 } else {




  printk("Buffer size error\n");
  i_ReturnValue = -101;
 }





 if ((i_ReturnValue >= 0)
  && (b_Command == APCI3XXX_TTL_INIT_DIRECTION_PORT2)) {




  if ((data[1] == 0) || (data[1] == 0xFF)) {




   devpriv->ul_TTLPortConfiguration[0] =
    devpriv->ul_TTLPortConfiguration[0] | data[1];
  } else {




   printk("Port 2 direction selection error\n");
   i_ReturnValue = -1;
  }
 }





 if (i_ReturnValue >= 0) {




  if (b_Command == APCI3XXX_TTL_INIT_DIRECTION_PORT2) {




   outl(data[1], devpriv->iobase + 224);
  }
 }

 return i_ReturnValue;
}
