
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {size_t minor; } ;
struct TYPE_4__ {scalar_t__ iobase; } ;
struct TYPE_3__ {scalar_t__ i_Offset; scalar_t__ i_Sum; scalar_t__ i_Count; scalar_t__ i_Initialised; scalar_t__ i_InterruptFlag; } ;


 TYPE_2__* devpriv ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 TYPE_1__* s_BoardInfos ;

int i_APCI3200_StopCyclicAcquisition(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned int ui_Configuration = 0;




 s_BoardInfos[dev->minor].i_InterruptFlag = 0;
 s_BoardInfos[dev->minor].i_Initialised = 0;
 s_BoardInfos[dev->minor].i_Count = 0;
 s_BoardInfos[dev->minor].i_Sum = 0;





 ui_Configuration =
  inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 8);




 while (((inl(devpriv->iobase + s_BoardInfos[dev->minor].i_Offset +
     12) >> 19) & 1) != 1) ;

 outl((ui_Configuration & 0xFFE7FFFF),
  devpriv->iobase + s_BoardInfos[dev->minor].i_Offset + 8);
 return 0;
}
