
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAR_DATA ;
 int outb (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void write_word_mode0(short ioaddr, unsigned short value)
{
    outb(value & 0x0f, ioaddr + PAR_DATA);
    value >>= 4;
    outb((value & 0x0f) | 0x10, ioaddr + PAR_DATA);
    value >>= 4;
    outb(value & 0x0f, ioaddr + PAR_DATA);
    value >>= 4;
    outb((value & 0x0f) | 0x10, ioaddr + PAR_DATA);
}
