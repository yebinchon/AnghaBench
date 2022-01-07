
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {scalar_t__ usefifo; } ;
struct TYPE_3__ {scalar_t__ is_818; } ;


 scalar_t__ PCL718_DA2_HI ;
 scalar_t__ PCL718_DA2_LO ;
 scalar_t__ PCL818_CLRINT ;
 scalar_t__ PCL818_CNTENABLE ;
 scalar_t__ PCL818_CONTROL ;
 scalar_t__ PCL818_CTRCTL ;
 scalar_t__ PCL818_DA_HI ;
 scalar_t__ PCL818_DA_LO ;
 scalar_t__ PCL818_DO_HI ;
 scalar_t__ PCL818_DO_LO ;
 scalar_t__ PCL818_FI_ENABLE ;
 scalar_t__ PCL818_FI_FLUSH ;
 scalar_t__ PCL818_FI_INTCLR ;
 scalar_t__ PCL818_MUX ;
 scalar_t__ PCL818_RANGE ;
 TYPE_2__* devpriv ;
 int outb (int,scalar_t__) ;
 TYPE_1__* this_board ;
 int udelay (int) ;

__attribute__((used)) static void pcl818_reset(struct comedi_device *dev)
{
 if (devpriv->usefifo) {
  outb(0, dev->iobase + PCL818_FI_INTCLR);
  outb(0, dev->iobase + PCL818_FI_FLUSH);
  outb(0, dev->iobase + PCL818_FI_ENABLE);
 }
 outb(0, dev->iobase + PCL818_DA_LO);
 outb(0, dev->iobase + PCL818_DA_HI);
 udelay(1);
 outb(0, dev->iobase + PCL818_DO_HI);
 outb(0, dev->iobase + PCL818_DO_LO);
 udelay(1);
 outb(0, dev->iobase + PCL818_CONTROL);
 outb(0, dev->iobase + PCL818_CNTENABLE);
 outb(0, dev->iobase + PCL818_MUX);
 outb(0, dev->iobase + PCL818_CLRINT);
 outb(0xb0, dev->iobase + PCL818_CTRCTL);
 outb(0x70, dev->iobase + PCL818_CTRCTL);
 outb(0x30, dev->iobase + PCL818_CTRCTL);
 if (this_board->is_818) {
  outb(0, dev->iobase + PCL818_RANGE);
 } else {
  outb(0, dev->iobase + PCL718_DA2_LO);
  outb(0, dev->iobase + PCL718_DA2_HI);
 }
}
