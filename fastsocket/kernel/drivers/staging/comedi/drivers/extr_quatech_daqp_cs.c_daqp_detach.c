
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; } ;


 int printk (char*,int ) ;

__attribute__((used)) static int daqp_detach(struct comedi_device *dev)
{
 printk("comedi%d: detaching daqp\n", dev->minor);

 return 0;
}
