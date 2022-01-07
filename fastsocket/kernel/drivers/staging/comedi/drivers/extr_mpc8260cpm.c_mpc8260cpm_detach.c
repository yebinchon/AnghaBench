
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; } ;


 int printk (char*,int ) ;

__attribute__((used)) static int mpc8260cpm_detach(struct comedi_device *dev)
{
 printk("comedi%d: mpc8260cpm: remove\n", dev->minor);

 return 0;
}
