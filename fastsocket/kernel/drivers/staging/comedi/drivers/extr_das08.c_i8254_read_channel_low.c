
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ I8254_CTRL ;
 unsigned int inb (unsigned int) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static unsigned int i8254_read_channel_low(unsigned int base, int chan)
{
 unsigned int msb, lsb;







 outb(chan << 6, base + I8254_CTRL);
 base += chan;
 lsb = inb(base);
 msb = inb(base);


 return lsb | (msb << 8);
}
