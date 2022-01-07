
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int* ul_TTLPortConfiguration; scalar_t__ iobase; TYPE_1__* ps_BoardInfo; } ;
struct TYPE_3__ {int i_NbrTTLChannel; } ;


 unsigned char APCI16XX_TTL_READCHANNEL ;
 unsigned char APCI16XX_TTL_READPORT ;
 unsigned char CR_CHAN (int ) ;
 unsigned char CR_RANGE (int ) ;
 TYPE_2__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int printk (char*) ;

int i_APCI16XX_InsnBitsReadTTLIO(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = insn->n;
 unsigned char b_Command = 0;
 unsigned char b_NumberOfPort =
  (unsigned char) (devpriv->ps_BoardInfo->i_NbrTTLChannel / 8);
 unsigned char b_SelectedPort = CR_RANGE(insn->chanspec);
 unsigned char b_InputChannel = CR_CHAN(insn->chanspec);
 unsigned char *pb_Status;
 unsigned int dw_Status;





 if (insn->n >= 1) {




  b_Command = (unsigned char) data[0];





  if ((b_Command == APCI16XX_TTL_READCHANNEL)
   || (b_Command == APCI16XX_TTL_READPORT)) {




   if (b_SelectedPort < b_NumberOfPort) {




    if (((devpriv->ul_TTLPortConfiguration
       [b_SelectedPort /
        4] >> (8 *
        (b_SelectedPort
         %
         4))) &
      0xFF) == 0) {




     if ((b_Command ==
       APCI16XX_TTL_READCHANNEL)
      && (b_InputChannel > 7)) {




      printk("\nChannel selection error");
      i_ReturnValue = -103;
     }
    } else {




     printk("\nPort selection error");
     i_ReturnValue = -102;
    }
   } else {




    printk("\nPort selection error");
    i_ReturnValue = -102;
   }
  } else {




   printk("\nCommand selection error");
   i_ReturnValue = -100;
  }
 } else {




  printk("\nBuffer size error");
  i_ReturnValue = -101;
 }





 if (i_ReturnValue >= 0) {
  pb_Status = (unsigned char *) &data[0];





  dw_Status =
   inl(devpriv->iobase + 8 + ((b_SelectedPort / 4) * 4));
  dw_Status = (dw_Status >> (8 * (b_SelectedPort % 4))) & 0xFF;





  *pb_Status = (unsigned char) dw_Status;





  if (b_Command == APCI16XX_TTL_READCHANNEL) {
   *pb_Status = (*pb_Status >> b_InputChannel) & 1;
  }
 }

 return i_ReturnValue;
}
