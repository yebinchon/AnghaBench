
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;


 unsigned long DCR9 ;
 scalar_t__ PCI_DM9132_ID ;
 int PHY_DATA_0 ;
 int PHY_DATA_1 ;
 int inw (unsigned long) ;
 int phy_read_1bit (unsigned long) ;
 int phy_write_1bit (unsigned long,int ) ;

__attribute__((used)) static u16 phy_read(unsigned long iobase, u8 phy_addr, u8 offset, u32 chip_id)
{
 int i;
 u16 phy_data;
 unsigned long ioaddr;

 if (chip_id == PCI_DM9132_ID) {

  ioaddr = iobase + 0x80 + offset * 4;
  phy_data = inw(ioaddr);
 } else {

  ioaddr = iobase + DCR9;


  for (i = 0; i < 35; i++)
   phy_write_1bit(ioaddr, PHY_DATA_1);


  phy_write_1bit(ioaddr, PHY_DATA_0);
  phy_write_1bit(ioaddr, PHY_DATA_1);


  phy_write_1bit(ioaddr, PHY_DATA_1);
  phy_write_1bit(ioaddr, PHY_DATA_0);


  for (i = 0x10; i > 0; i = i >> 1)
   phy_write_1bit(ioaddr,
           phy_addr & i ? PHY_DATA_1 : PHY_DATA_0);


  for (i = 0x10; i > 0; i = i >> 1)
   phy_write_1bit(ioaddr,
           offset & i ? PHY_DATA_1 : PHY_DATA_0);


  phy_read_1bit(ioaddr);


  for (phy_data = 0, i = 0; i < 16; i++) {
   phy_data <<= 1;
   phy_data |= phy_read_1bit(ioaddr);
  }
 }

 return phy_data;
}
