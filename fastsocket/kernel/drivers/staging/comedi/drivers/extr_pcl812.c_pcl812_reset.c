
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {int range_correction; int old_chan_reg; int old_gain_reg; int mode_reg_int; } ;
struct TYPE_3__ {int board_type; } ;


 scalar_t__ PCL812_CLRINT ;
 scalar_t__ PCL812_DA1_HI ;
 scalar_t__ PCL812_DA1_LO ;
 scalar_t__ PCL812_DA2_HI ;
 scalar_t__ PCL812_DA2_LO ;
 scalar_t__ PCL812_DO_HI ;
 scalar_t__ PCL812_DO_LO ;
 scalar_t__ PCL812_GAIN ;
 scalar_t__ PCL812_MODE ;
 scalar_t__ PCL812_MUX ;
 TYPE_2__* devpriv ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;
 int start_pacer (struct comedi_device*,int,int ,int ) ;
 TYPE_1__* this_board ;
 int udelay (int) ;

__attribute__((used)) static void pcl812_reset(struct comedi_device *dev)
{



 outb(0, dev->iobase + PCL812_MUX);
 outb(0 + devpriv->range_correction, dev->iobase + PCL812_GAIN);
 devpriv->old_chan_reg = -1;
 devpriv->old_gain_reg = -1;

 switch (this_board->board_type) {
 case 130:
 case 131:
 case 135:
 case 133:
  outb(0, dev->iobase + PCL812_DA2_LO);
  outb(0, dev->iobase + PCL812_DA2_HI);
 case 136:
  outb(0, dev->iobase + PCL812_DA1_LO);
  outb(0, dev->iobase + PCL812_DA1_HI);
  start_pacer(dev, -1, 0, 0);
  outb(0, dev->iobase + PCL812_DO_HI);
  outb(0, dev->iobase + PCL812_DO_LO);
  outb(devpriv->mode_reg_int | 0, dev->iobase + PCL812_MODE);
  outb(0, dev->iobase + PCL812_CLRINT);
  break;
 case 128:
 case 129:
 case 132:
 case 134:
  udelay(5);
  break;
 }
 udelay(5);



}
