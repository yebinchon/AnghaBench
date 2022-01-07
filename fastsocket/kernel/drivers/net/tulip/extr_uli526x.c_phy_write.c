
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;


 unsigned long DCR9 ;
 scalar_t__ PCI_ULI5263_ID ;
 int PHY_DATA_0 ;
 int PHY_DATA_1 ;
 int phy_write_1bit (unsigned long,int ,scalar_t__) ;
 int phy_writeby_cr10 (unsigned long,int,int,int) ;

__attribute__((used)) static void phy_write(unsigned long iobase, u8 phy_addr, u8 offset, u16 phy_data, u32 chip_id)
{
 u16 i;
 unsigned long ioaddr;

 if(chip_id == PCI_ULI5263_ID)
 {
  phy_writeby_cr10(iobase, phy_addr, offset, phy_data);
  return;
 }

 ioaddr = iobase + DCR9;


 for (i = 0; i < 35; i++)
  phy_write_1bit(ioaddr, PHY_DATA_1, chip_id);


 phy_write_1bit(ioaddr, PHY_DATA_0, chip_id);
 phy_write_1bit(ioaddr, PHY_DATA_1, chip_id);


 phy_write_1bit(ioaddr, PHY_DATA_0, chip_id);
 phy_write_1bit(ioaddr, PHY_DATA_1, chip_id);


 for (i = 0x10; i > 0; i = i >> 1)
  phy_write_1bit(ioaddr, phy_addr & i ? PHY_DATA_1 : PHY_DATA_0, chip_id);


 for (i = 0x10; i > 0; i = i >> 1)
  phy_write_1bit(ioaddr, offset & i ? PHY_DATA_1 : PHY_DATA_0, chip_id);


 phy_write_1bit(ioaddr, PHY_DATA_1, chip_id);
 phy_write_1bit(ioaddr, PHY_DATA_0, chip_id);


 for ( i = 0x8000; i > 0; i >>= 1)
  phy_write_1bit(ioaddr, phy_data & i ? PHY_DATA_1 : PHY_DATA_0, chip_id);

}
