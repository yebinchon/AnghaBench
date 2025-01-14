
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DT2801_CMD ;
 scalar_t__ DT2801_STATUS ;
 int DT_S_COMPOSITE_ERROR ;
 int DT_S_READY ;
 int dt2801_wait_for_ready (struct comedi_device*) ;
 int inb_p (scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 int printk (char*) ;

__attribute__((used)) static int dt2801_writecmd(struct comedi_device *dev, int command)
{
 int stat;

 dt2801_wait_for_ready(dev);

 stat = inb_p(dev->iobase + DT2801_STATUS);
 if (stat & DT_S_COMPOSITE_ERROR) {
  printk
      ("dt2801: composite-error in dt2801_writecmd(), ignoring\n");
 }
 if (!(stat & DT_S_READY)) {
  printk("dt2801: !ready in dt2801_writecmd(), ignoring\n");
 }
 outb_p(command, dev->iobase + DT2801_CMD);

 return 0;
}
