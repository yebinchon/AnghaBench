
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int LSR (int) ;
 int LSR_TSRE ;
 int MCR (int) ;
 unsigned char MCR_DTR ;
 unsigned char MCR_OUT1 ;
 unsigned char MCR_OUT2 ;
 unsigned char MCR_RTS ;
 int THR (int) ;
 int inb (int ) ;
 int jiffies ;
 int outb (int,int ) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static int fpga_write(int iobase, unsigned char wrd)
{
 unsigned char bit;
 int k;
 unsigned long timeout = jiffies + HZ / 10;

 for (k = 0; k < 8; k++) {
  bit = (wrd & 0x80) ? (MCR_RTS | MCR_DTR) : MCR_DTR;
  outb(bit | MCR_OUT1 | MCR_OUT2, MCR(iobase));
  wrd <<= 1;
  outb(0xfc, THR(iobase));
  while ((inb(LSR(iobase)) & LSR_TSRE) == 0)
   if (time_after(jiffies, timeout))
    return -1;
 }

 return 0;
}
