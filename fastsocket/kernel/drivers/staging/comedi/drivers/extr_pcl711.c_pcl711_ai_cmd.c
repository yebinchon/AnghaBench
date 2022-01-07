
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; int scan_begin_arg; int * chanlist; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;


 scalar_t__ PCL711_CLRINTR ;
 scalar_t__ PCL711_CTR1 ;
 scalar_t__ PCL711_CTR2 ;
 scalar_t__ PCL711_CTRCTL ;
 scalar_t__ PCL711_MODE ;
 int TRIG_ROUND_NEAREST ;
 scalar_t__ TRIG_TIMER ;
 TYPE_2__* devpriv ;
 int i8253_cascade_ns_to_timer (int ,int*,int*,int *,int ) ;
 int i8253_osc_base ;
 int outb (int,scalar_t__) ;
 int pcl711_set_changain (struct comedi_device*,int ) ;

__attribute__((used)) static int pcl711_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 int timer1, timer2;
 struct comedi_cmd *cmd = &s->async->cmd;

 pcl711_set_changain(dev, cmd->chanlist[0]);

 if (cmd->scan_begin_src == TRIG_TIMER) {
  i8253_cascade_ns_to_timer(i8253_osc_base, &timer1, &timer2,
       &cmd->scan_begin_arg,
       TRIG_ROUND_NEAREST);

  outb(0x74, dev->iobase + PCL711_CTRCTL);
  outb(timer1 & 0xff, dev->iobase + PCL711_CTR1);
  outb((timer1 >> 8) & 0xff, dev->iobase + PCL711_CTR1);
  outb(0xb4, dev->iobase + PCL711_CTRCTL);
  outb(timer2 & 0xff, dev->iobase + PCL711_CTR2);
  outb((timer2 >> 8) & 0xff, dev->iobase + PCL711_CTR2);


  outb(0, dev->iobase + PCL711_CLRINTR);




  outb(devpriv->mode | 6, dev->iobase + PCL711_MODE);
 } else {

  outb(devpriv->mode | 3, dev->iobase + PCL711_MODE);
 }

 return 0;
}
