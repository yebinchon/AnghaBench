
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int SelectPage (int) ;
 scalar_t__ mii_getbit (unsigned int) ;
 int mii_idle (unsigned int) ;
 int mii_putbit (unsigned int,int) ;
 int mii_wbits (unsigned int,int,int) ;

__attribute__((used)) static unsigned
mii_rd(unsigned int ioaddr, u_char phyaddr, u_char phyreg)
{
    int i;
    unsigned data=0, m;

    SelectPage(2);
    for (i=0; i < 32; i++)
 mii_putbit(ioaddr, 1);
    mii_wbits(ioaddr, 0x06, 4);
    mii_wbits(ioaddr, phyaddr, 5);
    mii_wbits(ioaddr, phyreg, 5);
    mii_idle(ioaddr);
    mii_getbit(ioaddr);

    for (m = 1<<15; m; m >>= 1)
 if (mii_getbit(ioaddr))
     data |= m;
    mii_idle(ioaddr);
    return data;
}
