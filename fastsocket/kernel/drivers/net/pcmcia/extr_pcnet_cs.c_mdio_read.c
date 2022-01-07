
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int MDIO_DATA_READ ;
 int MDIO_DATA_WRITE0 ;
 int MDIO_DATA_WRITE1 ;
 int MDIO_MASK ;
 int MDIO_SHIFT_CLK ;
 int inb (unsigned int) ;
 int mdio_sync (unsigned int) ;
 int outb (int,unsigned int) ;

__attribute__((used)) static int mdio_read(unsigned int addr, int phy_id, int loc)
{
    u_int cmd = (0x06<<10)|(phy_id<<5)|loc;
    int i, retval = 0, mask = inb(addr) & MDIO_MASK;

    mdio_sync(addr);
    for (i = 13; i >= 0; i--) {
 int dat = (cmd&(1<<i)) ? MDIO_DATA_WRITE1 : MDIO_DATA_WRITE0;
 outb(mask | dat, addr);
 outb(mask | dat | MDIO_SHIFT_CLK, addr);
    }
    for (i = 19; i > 0; i--) {
 outb(mask, addr);
 retval = (retval << 1) | ((inb(addr) & MDIO_DATA_READ) != 0);
 outb(mask | MDIO_SHIFT_CLK, addr);
    }
    return (retval>>1) & 0xffff;
}
