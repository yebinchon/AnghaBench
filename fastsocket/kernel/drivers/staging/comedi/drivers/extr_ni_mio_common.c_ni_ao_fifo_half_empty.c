
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int ao_fifo_depth; } ;
struct TYPE_3__ {int events; } ;


 int COMEDI_CB_BLOCK ;
 int COMEDI_CB_OVERFLOW ;
 TYPE_2__ boardtype ;
 int comedi_buf_read_n_available (TYPE_1__*) ;
 int ni_ao_fifo_load (struct comedi_device*,struct comedi_subdevice*,int) ;

__attribute__((used)) static int ni_ao_fifo_half_empty(struct comedi_device *dev,
     struct comedi_subdevice *s)
{
 int n;

 n = comedi_buf_read_n_available(s->async);
 if (n == 0) {
  s->async->events |= COMEDI_CB_OVERFLOW;
  return 0;
 }

 n /= sizeof(short);
 if (n > boardtype.ao_fifo_depth / 2)
  n = boardtype.ao_fifo_depth / 2;

 ni_ao_fifo_load(dev, s, n);

 s->async->events |= COMEDI_CB_BLOCK;

 return 1;
}
