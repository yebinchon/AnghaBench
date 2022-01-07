
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int das6402_ignoreirq; } ;


 int SCANL ;
 TYPE_1__* devpriv ;
 int outb_p (int,scalar_t__) ;
 int outw_p (int ,scalar_t__) ;
 int printk (char*) ;

__attribute__((used)) static int das6402_ai_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{





 devpriv->das6402_ignoreirq = 1;



 devpriv->das6402_ignoreirq = 1;
 outb_p(0x02, dev->iobase + 10);
 outw_p(SCANL, dev->iobase + 2);
 outb_p(0, dev->iobase + 9);

 outw_p(SCANL, dev->iobase + 2);

 return 0;
}
