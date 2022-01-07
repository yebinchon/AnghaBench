
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int read_subdev; scalar_t__ private; int minor; } ;


 int printk (char*,int ) ;
 int waveform_ai_cancel (struct comedi_device*,int ) ;

__attribute__((used)) static int waveform_detach(struct comedi_device *dev)
{
 printk("comedi%d: comedi_test: remove\n", dev->minor);

 if (dev->private)
  waveform_ai_cancel(dev, dev->read_subdev);

 return 0;
}
