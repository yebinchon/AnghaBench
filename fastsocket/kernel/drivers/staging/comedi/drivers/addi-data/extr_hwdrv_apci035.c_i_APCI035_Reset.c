
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 TYPE_1__* devpriv ;
 int i_WatchdogNbr ;
 int outl (int,scalar_t__) ;

int i_APCI035_Reset(struct comedi_device *dev)
{
 int i_Count = 0;
 for (i_Count = 1; i_Count <= 4; i_Count++) {
  i_WatchdogNbr = i_Count;
  outl(0x0, devpriv->iobase + ((i_WatchdogNbr - 1) * 32) + 0);
 }
 outl(0x0, devpriv->iobase + 128 + 12);

 return 0;
}
