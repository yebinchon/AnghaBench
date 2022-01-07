
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {scalar_t__ ai_bipolar; } ;
struct TYPE_3__ {int ai_bits; } ;


 scalar_t__ PCI230_ADCDATA ;
 TYPE_2__* devpriv ;
 scalar_t__ inw (scalar_t__) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static short pci230_ai_read(struct comedi_device *dev)
{

 short data = (short)inw(dev->iobase + PCI230_ADCDATA);




 data = data >> (16 - thisboard->ai_bits);



 if (devpriv->ai_bipolar) {
  data ^= 1 << (thisboard->ai_bits - 1);
 }
 return data;
}
