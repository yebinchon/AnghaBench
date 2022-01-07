
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDIO_DATA_WRITE1 ;
 int MDIO_SHIFT_CLK ;
 int outb_p (int,unsigned int) ;

__attribute__((used)) static void mdio_sync(unsigned int addr)
{
    int bits;
    for (bits = 0; bits < 32; bits++) {
 outb_p(MDIO_DATA_WRITE1, addr);
 outb_p(MDIO_DATA_WRITE1 | MDIO_SHIFT_CLK, addr);
    }
}
