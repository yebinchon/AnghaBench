
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef unsigned long u16 ;


 unsigned long DCR10 ;
 unsigned long inl (unsigned long) ;
 int outl (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static u16 phy_readby_cr10(unsigned long iobase, u8 phy_addr, u8 offset)
{
 unsigned long ioaddr,cr10_value;

 ioaddr = iobase + DCR10;
 cr10_value = phy_addr;
 cr10_value = (cr10_value<<5) + offset;
 cr10_value = (cr10_value<<16) + 0x08000000;
 outl(cr10_value,ioaddr);
 udelay(1);
 while(1)
 {
  cr10_value = inl(ioaddr);
  if(cr10_value&0x10000000)
   break;
 }
 return (cr10_value&0x0ffff);
}
