
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned int,unsigned int) ;

__attribute__((used)) static void i8254_write_channel_low(unsigned int base, int chan,
        unsigned int value)
{
 unsigned int msb, lsb;

 lsb = value & 0xFF;
 msb = value >> 8;


 base += chan;


 outb(lsb, base);
 outb(msb, base);

}
