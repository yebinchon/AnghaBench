
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int das6402_ignoreirq; } ;
typedef int BYTE ;


 int BIP ;
 int BURSTEN ;
 int CLRINT ;
 int CLRXIN ;
 int CLRXTR ;
 int CONVSRC ;
 int EXTEND ;
 int FIFOHFULL ;
 int GAIN ;
 int INTE ;
 int IRQ ;
 int MHZ ;
 int MODE ;
 int SCANL ;
 int SEM ;
 int TGEN ;
 int TGSEL ;
 int das6402_setcounter (struct comedi_device*) ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 int outw_p (int ,scalar_t__) ;

__attribute__((used)) static int board_init(struct comedi_device *dev)
{
 BYTE b;

 devpriv->das6402_ignoreirq = 1;

 outb(0x07, dev->iobase + 8);


 outb_p(MODE, dev->iobase + 11);
 b = BIP | SEM | MODE | GAIN | FIFOHFULL;
 outb_p(b, dev->iobase + 11);


 outb_p(EXTEND, dev->iobase + 8);
 b = EXTEND | MHZ;
 outb_p(b, dev->iobase + 8);
 b = MHZ | CLRINT | CLRXTR | CLRXIN;
 outb_p(b, dev->iobase + 8);


 b = IRQ | CONVSRC | BURSTEN | INTE;
 outb_p(b, dev->iobase + 9);


 b = TGSEL | TGEN;
 outb_p(b, dev->iobase + 10);

 b = 0x07;
 outb_p(b, dev->iobase + 8);

 das6402_setcounter(dev);

 outw_p(SCANL, dev->iobase + 2);

 devpriv->das6402_ignoreirq = 0;

 return 0;
}
