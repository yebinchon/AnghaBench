
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int inl (unsigned long) ;
 int outl (int,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static u16 phy_read_1bit(unsigned long ioaddr, u32 chip_id)
{
 u16 phy_data;

 outl(0x50000 , ioaddr);
 udelay(1);
 phy_data = ( inl(ioaddr) >> 19 ) & 0x1;
 outl(0x40000 , ioaddr);
 udelay(1);

 return phy_data;
}
