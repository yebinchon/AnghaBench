
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct maestro {int io; int muted; } ;


 int IO_DIR ;
 int IO_MASK ;
 int STR_CLK ;
 int STR_DATA ;
 int STR_WREN ;
 int inw (int) ;
 int msleep (int) ;
 int outw (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void radio_bits_set(struct maestro *dev, u32 data)
{
 u16 io = dev->io, l, bits;
 u16 omask, odir;

 omask = inw(io + IO_MASK);
 odir = (inw(io + IO_DIR) & ~STR_DATA) | (STR_CLK | STR_WREN);
 outw(odir | STR_DATA, io + IO_DIR);
 outw(~(STR_DATA | STR_CLK | STR_WREN), io + IO_MASK);
 udelay(16);
 for (l = 25; l; l--) {
  bits = ((data >> 18) & STR_DATA) | STR_WREN;
  data <<= 1;
  outw(bits, io);
  udelay(2);
  outw(bits | STR_CLK, io);
  udelay(2);
  outw(bits, io);
  udelay(4);
 }

 if (!dev->muted)
  outw(0, io);

 udelay(4);
 outw(omask, io + IO_MASK);
 outw(odir, io + IO_DIR);
 msleep(125);
}
