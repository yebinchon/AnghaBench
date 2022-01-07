
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDIO_DATA_WRITE1 ;
 int MDIO_MASK ;
 int MDIO_SHIFT_CLK ;
 int inb (unsigned int) ;
 int outb (int,unsigned int) ;

__attribute__((used)) static void mdio_sync(unsigned int addr)
{
    int bits, mask = inb(addr) & MDIO_MASK;
    for (bits = 0; bits < 32; bits++) {
 outb(mask | MDIO_DATA_WRITE1, addr);
 outb(mask | MDIO_DATA_WRITE1 | MDIO_SHIFT_CLK, addr);
    }
}
