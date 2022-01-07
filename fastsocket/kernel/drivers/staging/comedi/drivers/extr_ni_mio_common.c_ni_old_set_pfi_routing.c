
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int EINVAL ;
 unsigned int ni_old_get_pfi_routing (struct comedi_device*,unsigned int) ;

__attribute__((used)) static int ni_old_set_pfi_routing(struct comedi_device *dev, unsigned chan,
      unsigned source)
{

 if (source != ni_old_get_pfi_routing(dev, chan))
  return -EINVAL;
 return 2;
}
