
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DT2815_STATUS ;
 int inb (scalar_t__) ;

__attribute__((used)) static int dt2815_wait_for_status(struct comedi_device *dev, int status)
{
 int i;

 for (i = 0; i < 100; i++) {
  if (inb(dev->iobase + DT2815_STATUS) == status)
   break;
 }
 return status;
}
