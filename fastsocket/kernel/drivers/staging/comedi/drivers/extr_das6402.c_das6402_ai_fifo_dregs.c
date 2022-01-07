
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int async; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int comedi_buf_put (int ,int ) ;
 int inb (scalar_t__) ;
 int inw (scalar_t__) ;

__attribute__((used)) static void das6402_ai_fifo_dregs(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 while (1) {
  if (!(inb(dev->iobase + 8) & 0x01))
   return;
  comedi_buf_put(s->async, inw(dev->iobase));
 }
}
