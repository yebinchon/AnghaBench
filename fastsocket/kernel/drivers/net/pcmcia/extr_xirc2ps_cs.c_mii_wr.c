
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_char ;


 int SelectPage (int) ;
 int mii_idle (unsigned int) ;
 int mii_putbit (unsigned int,int) ;
 int mii_wbits (unsigned int,unsigned int,int) ;

__attribute__((used)) static void
mii_wr(unsigned int ioaddr, u_char phyaddr, u_char phyreg, unsigned data,
       int len)
{
    int i;

    SelectPage(2);
    for (i=0; i < 32; i++)
 mii_putbit(ioaddr, 1);
    mii_wbits(ioaddr, 0x05, 4);
    mii_wbits(ioaddr, phyaddr, 5);
    mii_wbits(ioaddr, phyreg, 5);
    mii_putbit(ioaddr, 1);
    mii_putbit(ioaddr, 0);
    mii_wbits(ioaddr, data, len);
    mii_idle(ioaddr);
}
