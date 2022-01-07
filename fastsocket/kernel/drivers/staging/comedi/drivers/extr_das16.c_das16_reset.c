
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAS16_CNTR_CONTROL ;
 scalar_t__ DAS16_CONTROL ;
 scalar_t__ DAS16_PACER ;
 scalar_t__ DAS16_STATUS ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void das16_reset(struct comedi_device *dev)
{
 outb(0, dev->iobase + DAS16_STATUS);
 outb(0, dev->iobase + DAS16_CONTROL);
 outb(0, dev->iobase + DAS16_PACER);
 outb(0, dev->iobase + DAS16_CNTR_CONTROL);
}
