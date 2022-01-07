
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int di_mite_ring; } ;
struct TYPE_3__ {int prealloc_bufsz; int prealloc_buf; } ;


 TYPE_2__* devpriv ;
 int memset (int ,int,int ) ;
 int mite_buf_change (int ,TYPE_1__*) ;

__attribute__((used)) static int ni_pcidio_change(struct comedi_device *dev,
       struct comedi_subdevice *s, unsigned long new_size)
{
 int ret;

 ret = mite_buf_change(devpriv->di_mite_ring, s->async);
 if (ret < 0)
  return ret;

 memset(s->async->prealloc_buf, 0xaa, s->async->prealloc_bufsz);

 return 0;
}
