
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; int minor; } ;


 int ATAO_SIZE ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int atao_detach(struct comedi_device *dev)
{
 printk("comedi%d: atao: remove\n", dev->minor);

 if (dev->iobase)
  release_region(dev->iobase, ATAO_SIZE);

 return 0;
}
