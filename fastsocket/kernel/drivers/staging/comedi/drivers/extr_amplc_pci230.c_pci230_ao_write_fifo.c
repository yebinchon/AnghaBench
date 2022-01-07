
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {short* ao_readback; } ;


 scalar_t__ PCI230P2_DACDATA ;
 TYPE_1__* devpriv ;
 int outw (int ,scalar_t__) ;
 int pci230_ao_mangle_datum (struct comedi_device*,short) ;

__attribute__((used)) static inline void pci230_ao_write_fifo(struct comedi_device *dev, short datum,
     unsigned int chan)
{

 devpriv->ao_readback[chan] = datum;


 outw(pci230_ao_mangle_datum(dev, datum),
      dev->iobase + PCI230P2_DACDATA);
}
