
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {TYPE_1__* read_subdev; } ;
struct TYPE_2__ {int maxdata; } ;



__attribute__((used)) static short fake_flatline(struct comedi_device *dev, unsigned int range_index,
      unsigned long current_time)
{
 return dev->read_subdev->maxdata / 2;
}
