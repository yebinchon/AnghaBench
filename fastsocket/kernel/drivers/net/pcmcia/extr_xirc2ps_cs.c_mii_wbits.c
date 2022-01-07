
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mii_putbit (unsigned int,unsigned int) ;

__attribute__((used)) static void
mii_wbits(unsigned int ioaddr, unsigned data, int len)
{
    unsigned m = 1 << (len-1);
    for (; m; m >>= 1)
 mii_putbit(ioaddr, data & m);
}
