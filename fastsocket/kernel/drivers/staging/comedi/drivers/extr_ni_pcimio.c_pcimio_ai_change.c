
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int ai_mite_ring; } ;


 TYPE_1__* devpriv ;
 int mite_buf_change (int ,int ) ;

__attribute__((used)) static int pcimio_ai_change(struct comedi_device *dev,
       struct comedi_subdevice *s, unsigned long new_size)
{
 int ret;

 ret = mite_buf_change(devpriv->ai_mite_ring, s->async);
 if (ret < 0)
  return ret;

 return 0;
}
