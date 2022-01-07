
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int* ul_TTLPortConfiguration; int b_OutputMemoryStatus; scalar_t__ iobase; TYPE_1__* ps_BoardInfo; } ;
struct TYPE_3__ {int i_NbrTTLChannel; } ;


 int ADDIDATA_DISABLE ;
 int ADDIDATA_ENABLE ;
 unsigned char APCI16XX_TTL_INIT ;
 unsigned char APCI16XX_TTL_INITDIRECTION ;
 unsigned char APCI16XX_TTL_OUTPUTMEMORY ;
 TYPE_2__* devpriv ;
 int memset (unsigned int*,int ,int) ;
 int outl (unsigned int,scalar_t__) ;
 int printk (char*,...) ;

int i_APCI16XX_InsnConfigInitTTLIO(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = insn->n;
 unsigned char b_Command = 0;
 unsigned char b_Cpt = 0;
 unsigned char b_NumberOfPort =
  (unsigned char) (devpriv->ps_BoardInfo->i_NbrTTLChannel / 8);





 if (insn->n >= 1) {




  b_Command = (unsigned char) data[0];





  if ((b_Command == APCI16XX_TTL_INIT) ||
   (b_Command == APCI16XX_TTL_INITDIRECTION) ||
   (b_Command == APCI16XX_TTL_OUTPUTMEMORY)) {




   if ((b_Command == APCI16XX_TTL_INITDIRECTION)
    && ((unsigned char) (insn->n - 1) != b_NumberOfPort)) {




    printk("\nBuffer size error");
    i_ReturnValue = -101;
   }

   if ((b_Command == APCI16XX_TTL_OUTPUTMEMORY)
    && ((unsigned char) (insn->n) != 2)) {




    printk("\nBuffer size error");
    i_ReturnValue = -101;
   }
  } else {




   printk("\nCommand selection error");
   i_ReturnValue = -100;
  }
 } else {




  printk("\nBuffer size error");
  i_ReturnValue = -101;
 }





 if ((i_ReturnValue >= 0) && (b_Command == APCI16XX_TTL_INITDIRECTION)) {
  memset(devpriv->ul_TTLPortConfiguration, 0,
   sizeof(devpriv->ul_TTLPortConfiguration));





  for (b_Cpt = 1;
   (b_Cpt <= b_NumberOfPort) && (i_ReturnValue >= 0);
   b_Cpt++) {




   if ((data[b_Cpt] != 0) && (data[b_Cpt] != 0xFF)) {




    printk("\nPort %d direction selection error",
     (int) b_Cpt);
    i_ReturnValue = -(int) b_Cpt;
   }





   devpriv->ul_TTLPortConfiguration[(b_Cpt - 1) / 4] =
    devpriv->ul_TTLPortConfiguration[(b_Cpt -
     1) / 4] | (data[b_Cpt] << (8 * ((b_Cpt -
       1) % 4)));
  }
 }





 if (i_ReturnValue >= 0) {




  if ((b_Command == APCI16XX_TTL_INIT)
   || (b_Command == APCI16XX_TTL_INITDIRECTION)) {




   for (b_Cpt = 0; b_Cpt <= b_NumberOfPort; b_Cpt++) {
    if ((b_Cpt % 4) == 0) {




     outl(devpriv->
      ul_TTLPortConfiguration[b_Cpt /
       4],
      devpriv->iobase + 32 + b_Cpt);
    }
   }
  }
 }





 if (b_Command == APCI16XX_TTL_OUTPUTMEMORY) {
  if (data[1]) {
   devpriv->b_OutputMemoryStatus = ADDIDATA_ENABLE;
  } else {
   devpriv->b_OutputMemoryStatus = ADDIDATA_DISABLE;
  }
 }

 return i_ReturnValue;
}
