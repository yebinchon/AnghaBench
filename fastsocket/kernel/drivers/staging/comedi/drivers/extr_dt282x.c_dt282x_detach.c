
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; } ;


 int free_resources (struct comedi_device*) ;
 int printk (char*,int ) ;

__attribute__((used)) static int dt282x_detach(struct comedi_device *dev)
{
 printk("comedi%d: dt282x: remove\n", dev->minor);

 free_resources(dev);

 return 0;
}
