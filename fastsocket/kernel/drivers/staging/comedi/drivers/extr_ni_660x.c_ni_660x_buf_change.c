
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int async; } ;
struct comedi_device {int dummy; } ;


 int mite_buf_change (int ,int ) ;
 int mite_ring (int ,int ) ;
 int private (struct comedi_device*) ;
 int subdev_to_counter (struct comedi_subdevice*) ;

__attribute__((used)) static int ni_660x_buf_change(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned long new_size)
{
 int ret;

 ret = mite_buf_change(mite_ring(private(dev), subdev_to_counter(s)),
         s->async);
 if (ret < 0)
  return ret;

 return 0;
}
