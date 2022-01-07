
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {size_t minor; } ;
struct TYPE_4__ {scalar_t__ iobase; } ;
struct TYPE_3__ {int i_ADDIDATAConversionTimeUnit; int i_ADDIDATAConversionTime; scalar_t__ i_InterruptFlag; scalar_t__ i_Offset; } ;


 scalar_t__ ADDIDATA_DISABLE ;
 scalar_t__ ADDIDATA_ENABLE ;
 TYPE_2__* devpriv ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 TYPE_1__* s_BoardInfos ;

int i_APCI3200_ReadCalibrationGainValue(struct comedi_device *dev, unsigned int *data)
{
 unsigned int ui_EOC = 0;
 int ui_CommandRegister = 0;


 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;
 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl(s_BoardInfos[dev->minor].i_ADDIDATAConversionTimeUnit,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 36);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl(s_BoardInfos[dev->minor].i_ADDIDATAConversionTime,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 32);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl(0x00040000,
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 12);





 ui_CommandRegister = 0;






 if (s_BoardInfos[dev->minor].i_InterruptFlag == ADDIDATA_ENABLE) {





  ui_CommandRegister = ui_CommandRegister | 0x00100000;

 }





 ui_CommandRegister = ui_CommandRegister | 0x00080000;




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
