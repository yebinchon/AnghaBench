
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCL816_CLRINT ;
 scalar_t__ PCL816_CONTROL ;
 scalar_t__ PCL816_CTRCTL ;
 scalar_t__ PCL816_MUX ;
 scalar_t__ PCL816_RANGE ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void pcl816_reset(struct comedi_device *dev)
{






 outb(0, dev->iobase + PCL816_CONTROL);
 outb(0, dev->iobase + PCL816_MUX);
 outb(0, dev->iobase + PCL816_CLRINT);
 outb(0xb0, dev->iobase + PCL816_CTRCTL);
 outb(0x70, dev->iobase + PCL816_CTRCTL);
 outb(0x30, dev->iobase + PCL816_CTRCTL);
 outb(0, dev->iobase + PCL816_RANGE);
}
