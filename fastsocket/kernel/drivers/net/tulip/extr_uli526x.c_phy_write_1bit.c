
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MDCLKH ;
 int outl (int,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void phy_write_1bit(unsigned long ioaddr, u32 phy_data, u32 chip_id)
{
 outl(phy_data , ioaddr);
 udelay(1);
 outl(phy_data | MDCLKH, ioaddr);
 udelay(1);
 outl(phy_data , ioaddr);
 udelay(1);
}
