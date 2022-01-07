
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int free_resources (struct comedi_device*) ;

__attribute__((used)) static int pcl818_detach(struct comedi_device *dev)
{

 free_resources(dev);
 return 0;
}
