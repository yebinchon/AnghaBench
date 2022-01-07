
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {size_t minor; } ;
struct TYPE_4__ {scalar_t__ iobase; } ;
struct TYPE_3__ {unsigned int i_ChannelNo; unsigned int i_ADDIDATAConversionTimeUnit; unsigned int i_ADDIDATAConversionTime; scalar_t__ i_InterruptFlag; scalar_t__ i_Offset; } ;


 scalar_t__ ADDIDATA_DISABLE ;
 scalar_t__ ADDIDATA_ENABLE ;
 TYPE_2__* devpriv ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 TYPE_1__* s_BoardInfos ;

int i_APCI3200_Read1AnalogInputChannel(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_EOC = 0;
 unsigned int ui_ChannelNo = 0;
 unsigned int ui_CommandRegister = 0;



 ui_ChannelNo = s_BoardInfos[dev->minor].i_ChannelNo;


 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;






 outl(0 | s_BoardInfos[dev->minor].i_ChannelNo,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 0x4);






 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;


 outl(s_BoardInfos[dev->minor].i_ADDIDATAConversionTimeUnit,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 36);





 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;


 outl(s_BoardInfos[dev->minor].i_ADDIDATAConversionTime,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 32);





 ui_CommandRegister = ui_ChannelNo | (ui_ChannelNo << 8) | 0x80000;






 if (s_BoardInfos[dev->minor].i_InterruptFlag == ADDIDATA_ENABLE) {



  ui_CommandRegister = ui_CommandRegister | 0x00100000;
 }





 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;


 outl(ui_CommandRegister,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 8);





 if (s_BoardInfos[dev->minor].i_InterruptFlag == ADDIDATA_DISABLE) {
  do {





   ui_EOC = inl(devpriv->iobase +
    s_BoardInfos[dev->minor].i_Offset + 20) & 1;

  } while (ui_EOC != 1);






  data[0] =
   inl(devpriv->iobase +
   s_BoardInfos[dev->minor].i_Offset + 28);


 }
 return 0;
}
