
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {size_t minor; } ;
struct TYPE_4__ {scalar_t__ iobase; scalar_t__ i_IobaseAddon; scalar_t__ i_IobaseAmcc; } ;
struct TYPE_3__ {scalar_t__* ui_InterruptChannelValue; scalar_t__ b_StructInitialized; scalar_t__ i_Sum; scalar_t__ i_Count; scalar_t__ i_Initialised; scalar_t__ i_InterruptFlag; } ;


 TYPE_2__* devpriv ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 TYPE_1__* s_BoardInfos ;

int i_APCI3200_Reset(struct comedi_device *dev)
{
 int i_Temp;
 unsigned int dw_Dummy;





 s_BoardInfos[dev->minor].i_InterruptFlag = 0;
 s_BoardInfos[dev->minor].i_Initialised = 0;
 s_BoardInfos[dev->minor].i_Count = 0;
 s_BoardInfos[dev->minor].i_Sum = 0;
 s_BoardInfos[dev->minor].b_StructInitialized = 0;

 outl(0x83838383, devpriv->i_IobaseAmcc + 0x60);


 dw_Dummy = inl(devpriv->i_IobaseAmcc + 0x38);
 outl(dw_Dummy | 0x2000, devpriv->i_IobaseAmcc + 0x38);
 outl(0, devpriv->i_IobaseAddon);



 for (i_Temp = 0; i_Temp <= 95; i_Temp++) {

  s_BoardInfos[dev->minor].ui_InterruptChannelValue[i_Temp] = 0;
 }



 for (i_Temp = 0; i_Temp <= 192;) {
  while (((inl(devpriv->iobase + i_Temp + 12) >> 19) & 1) != 1) ;
  outl(0, devpriv->iobase + i_Temp + 8);
  i_Temp = i_Temp + 64;
 }
 return 0;
}
