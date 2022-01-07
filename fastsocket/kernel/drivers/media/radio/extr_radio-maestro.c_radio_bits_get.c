
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct maestro {int io; int tuned; int stereo; scalar_t__ muted; } ;


 int IO_MASK ;
 int STR_CLK ;
 int STR_DATA ;
 int STR_MOST ;
 int STR_WREN ;
 int inw (int) ;
 int outw (int,int) ;
 int udelay (int) ;

__attribute__((used)) static u32 radio_bits_get(struct maestro *dev)
{
 u16 io = dev->io, l, rdata;
 u32 data = 0;
 u16 omask;

 omask = inw(io + IO_MASK);
 outw(~(STR_CLK | STR_WREN), io + IO_MASK);
 outw(0, io);
 udelay(16);

 for (l = 24; l--;) {
  outw(STR_CLK, io);
  udelay(2);
  if (!l)
   dev->tuned = inw(io) & STR_MOST ? 0 : 0xffff;
  outw(0, io);
  udelay(2);
  data <<= 1;
  rdata = inw(io);
  if (!l)
   dev->stereo = (rdata & STR_MOST) ? 0 : 1;
  else if (rdata & STR_DATA)
   data++;
  udelay(2);
 }

 if (dev->muted)
  outw(STR_WREN, io);

 udelay(4);
 outw(omask, io + IO_MASK);

 return data & 0x3ffe;
}
