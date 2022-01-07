
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int ID_BITS (int) ;
 scalar_t__ STATUS_REG ;
 int inw (scalar_t__) ;

__attribute__((used)) static int a2150_probe(struct comedi_device *dev)
{
 int status = inw(dev->iobase + STATUS_REG);
 return ID_BITS(status);
}
