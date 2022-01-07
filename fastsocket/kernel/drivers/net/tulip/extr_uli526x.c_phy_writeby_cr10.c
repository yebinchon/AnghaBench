
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef unsigned long u16 ;


 unsigned long DCR10 ;
 int outl (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void phy_writeby_cr10(unsigned long iobase, u8 phy_addr, u8 offset, u16 phy_data)
{
 unsigned long ioaddr,cr10_value;

 ioaddr = iobase + DCR10;
 cr10_value = phy_addr;
 cr10_value = (cr10_value<<5) + offset;
 cr10_value = (cr10_value<<16) + 0x04000000 + phy_data;
 outl(cr10_value,ioaddr);
 udelay(1);
}
