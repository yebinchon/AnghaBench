
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uli526x_board_info {int media_mode; int PHY_reg4; int chip_id; int phy_addr; int ioaddr; } ;






 int ULI526X_AUTO ;
 int phy_read (int ,int ,int,int ) ;
 int phy_write (int ,int ,int,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void uli526x_set_phyxcer(struct uli526x_board_info *db)
{
 u16 phy_reg;


 phy_reg = phy_read(db->ioaddr, db->phy_addr, 4, db->chip_id) & ~0x01e0;

 if (db->media_mode & ULI526X_AUTO) {

  phy_reg |= db->PHY_reg4;
 } else {

  switch(db->media_mode) {
  case 128: phy_reg |= 0x20; break;
  case 129: phy_reg |= 0x40; break;
  case 130: phy_reg |= 0x80; break;
  case 131: phy_reg |= 0x100; break;
  }

 }


 if ( !(phy_reg & 0x01e0)) {
  phy_reg|=db->PHY_reg4;
  db->media_mode|=ULI526X_AUTO;
 }
 phy_write(db->ioaddr, db->phy_addr, 4, phy_reg, db->chip_id);


 phy_write(db->ioaddr, db->phy_addr, 0, 0x1200, db->chip_id);
 udelay(50);
}
