
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;
typedef int BYTE ;


 int C0 ;
 int C1 ;
 int C2 ;
 int M0 ;
 int M2 ;
 int RWLH ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static void das6402_setcounter(struct comedi_device *dev)
{
 BYTE p;
 unsigned short ctrlwrd;


 p = M0 | C0 | RWLH;
 outb_p(p, dev->iobase + 15);
 ctrlwrd = 2000;
 p = (BYTE) (0xff & ctrlwrd);
 outb_p(p, dev->iobase + 12);
 p = (BYTE) (0xff & (ctrlwrd >> 8));
 outb_p(p, dev->iobase + 12);


 p = M2 | C1 | RWLH;
 outb_p(p, dev->iobase + 15);
 ctrlwrd = 10;
 p = (BYTE) (0xff & ctrlwrd);
 outb_p(p, dev->iobase + 13);
 p = (BYTE) (0xff & (ctrlwrd >> 8));
 outb_p(p, dev->iobase + 13);


 p = M2 | C2 | RWLH;
 outb_p(p, dev->iobase + 15);
 ctrlwrd = 1000;
 p = (BYTE) (0xff & ctrlwrd);
 outb_p(p, dev->iobase + 14);
 p = (BYTE) (0xff & (ctrlwrd >> 8));
 outb_p(p, dev->iobase + 14);
}
