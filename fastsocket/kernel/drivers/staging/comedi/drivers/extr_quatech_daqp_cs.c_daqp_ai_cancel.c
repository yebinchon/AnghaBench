
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_info_t {int interrupt_mode; scalar_t__ stop; } ;
struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAQP_COMMAND ;
 int DAQP_COMMAND_STOP ;
 int EIO ;
 int outb (int ,scalar_t__) ;
 int semaphore ;

__attribute__((used)) static int daqp_ai_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct local_info_t *local = (struct local_info_t *)s->private;

 if (local->stop) {
  return -EIO;
 }

 outb(DAQP_COMMAND_STOP, dev->iobase + DAQP_COMMAND);




 local->interrupt_mode = semaphore;

 return 0;
}
