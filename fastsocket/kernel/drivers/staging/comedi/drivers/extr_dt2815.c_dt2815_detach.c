
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; } ;


 int dt2815_free_resources (struct comedi_device*) ;
 int printk (char*,int ) ;

__attribute__((used)) static int dt2815_detach(struct comedi_device *dev)
{
 printk("comedi%d: dt2815: remove\n", dev->minor);

 dt2815_free_resources(dev);

 return 0;
}
