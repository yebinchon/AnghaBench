
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmr2 {int curvol; int card_type; int io; } ;


 int outb (int,int ) ;
 int wait (int,int ) ;

__attribute__((used)) static int fmr2_setvolume(struct fmr2 *dev)
{
 int vol[16] = { 0x021, 0x084, 0x090, 0x104,
   0x110, 0x204, 0x210, 0x402,
   0x404, 0x408, 0x410, 0x801,
   0x802, 0x804, 0x808, 0x810 };
 int i, a;
 int n = vol[dev->curvol & 0x0f];

 if (dev->card_type != 11)
  return 1;

 for (i = 12; --i >= 0; ) {
  a = ((n >> i) & 1) << 6;
  outb(a | 4, dev->io);
  wait(4, dev->io);
  outb(a | 0x24, dev->io);
  wait(4, dev->io);
  outb(a | 4, dev->io);
  wait(4, dev->io);
 }
 for (i = 6; --i >= 0; ) {
  a = ((0x18 >> i) & 1) << 6;
  outb(a | 4, dev->io);
  wait(4, dev->io);
  outb(a | 0x24, dev->io);
  wait(4, dev->io);
  outb(a | 4, dev->io);
  wait(4, dev->io);
 }
 wait(4, dev->io);
 outb(0x14, dev->io);
 return 0;
}
