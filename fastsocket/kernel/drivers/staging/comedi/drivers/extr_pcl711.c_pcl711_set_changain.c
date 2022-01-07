
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ is_8112; } ;


 int CR_CHAN (int) ;
 int CR_RANGE (int) ;
 scalar_t__ PCL711_GAIN ;
 scalar_t__ PCL711_MUX ;
 int outb (int,scalar_t__) ;
 TYPE_1__* this_board ;

__attribute__((used)) static void pcl711_set_changain(struct comedi_device *dev, int chan)
{
 int chan_register;

 outb(CR_RANGE(chan), dev->iobase + PCL711_GAIN);

 chan_register = CR_CHAN(chan);

 if (this_board->is_8112) {
  if (chan_register >= 8) {
   chan_register = 0x20 | (chan_register & 0x7);
  } else {
   chan_register |= 0x10;
  }
 } else {
  outb(chan_register, dev->iobase + PCL711_MUX);
 }
}
