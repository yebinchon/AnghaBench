
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dmfe_board_info {int cr6_data; int media_mode; int PHY_reg4; int chip_id; int phy_addr; int ioaddr; scalar_t__ chip_type; } ;






 int DMFE_AUTO ;
 int PCI_DM9009_ID ;
 int PCI_DM9102_ID ;
 int phy_read (int ,int ,int,int ) ;
 int phy_write (int ,int ,int,int,int ) ;
 int update_cr6 (int,int ) ;

__attribute__((used)) static void dmfe_set_phyxcer(struct dmfe_board_info *db)
{
 u16 phy_reg;


 db->cr6_data &= ~0x40000;
 update_cr6(db->cr6_data, db->ioaddr);


 if (db->chip_id == PCI_DM9009_ID) {
  phy_reg = phy_read(db->ioaddr,
       db->phy_addr, 18, db->chip_id) & ~0x1000;

  phy_write(db->ioaddr,
     db->phy_addr, 18, phy_reg, db->chip_id);
 }


 phy_reg = phy_read(db->ioaddr, db->phy_addr, 4, db->chip_id) & ~0x01e0;

 if (db->media_mode & DMFE_AUTO) {

  phy_reg |= db->PHY_reg4;
 } else {

  switch(db->media_mode) {
  case 128: phy_reg |= 0x20; break;
  case 129: phy_reg |= 0x40; break;
  case 130: phy_reg |= 0x80; break;
  case 131: phy_reg |= 0x100; break;
  }
  if (db->chip_id == PCI_DM9009_ID) phy_reg &= 0x61;
 }


 if ( !(phy_reg & 0x01e0)) {
  phy_reg|=db->PHY_reg4;
  db->media_mode|=DMFE_AUTO;
 }
 phy_write(db->ioaddr, db->phy_addr, 4, phy_reg, db->chip_id);


 if ( db->chip_type && (db->chip_id == PCI_DM9102_ID) )
  phy_write(db->ioaddr, db->phy_addr, 0, 0x1800, db->chip_id);
 if ( !db->chip_type )
  phy_write(db->ioaddr, db->phy_addr, 0, 0x1200, db->chip_id);
}
