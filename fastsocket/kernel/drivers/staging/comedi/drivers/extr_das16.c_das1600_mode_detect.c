
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int clockbase; } ;


 int DAS1600_CLK_10MHZ ;
 scalar_t__ DAS1600_STATUS_B ;
 TYPE_1__* devpriv ;
 int inb (scalar_t__) ;
 int printk (char*) ;
 int reg_dump (struct comedi_device*) ;

__attribute__((used)) static int das1600_mode_detect(struct comedi_device *dev)
{
 int status = 0;

 status = inb(dev->iobase + DAS1600_STATUS_B);

 if (status & DAS1600_CLK_10MHZ) {
  devpriv->clockbase = 100;
  printk(" 10MHz pacer clock\n");
 } else {
  devpriv->clockbase = 1000;
  printk(" 1MHz pacer clock\n");
 }

 reg_dump(dev);

 return 0;
}
