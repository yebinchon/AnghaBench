
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int ai_fifo_depth; } ;


 int NI_AI_SUBDEV ;
 TYPE_1__ boardtype ;
 int ni_ai_fifo_read (struct comedi_device*,struct comedi_subdevice*,int) ;

__attribute__((used)) static void ni_handle_fifo_half_full(struct comedi_device *dev)
{
 int n;
 struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;

 n = boardtype.ai_fifo_depth / 2;

 ni_ai_fifo_read(dev, s, n);
}
