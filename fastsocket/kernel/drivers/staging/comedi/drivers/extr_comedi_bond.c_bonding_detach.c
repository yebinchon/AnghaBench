
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; } ;


 int LOG_MSG (char*,int ) ;
 int doDevUnconfig (struct comedi_device*) ;

__attribute__((used)) static int bonding_detach(struct comedi_device *dev)
{
 LOG_MSG("comedi%d: remove\n", dev->minor);
 doDevUnconfig(dev);
 return 0;
}
