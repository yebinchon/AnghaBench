
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dmfe_board_info {int cr6_data; scalar_t__ chip_id; void* op_mode; int phy_addr; int ioaddr; } ;


 void* DMFE_100MFD ;
 void* DMFE_100MHF ;
 void* DMFE_10MFD ;
 void* DMFE_10MHF ;
 int DMFE_DBUG (int ,char*,int) ;
 scalar_t__ PCI_DM9132_ID ;
 int phy_read (int ,int ,int,scalar_t__) ;
 int update_cr6 (int,int ) ;

__attribute__((used)) static u8 dmfe_sense_speed(struct dmfe_board_info * db)
{
 u8 ErrFlag = 0;
 u16 phy_mode;


 update_cr6( (db->cr6_data & ~0x40000), db->ioaddr);

 phy_mode = phy_read(db->ioaddr, db->phy_addr, 1, db->chip_id);
 phy_mode = phy_read(db->ioaddr, db->phy_addr, 1, db->chip_id);

 if ( (phy_mode & 0x24) == 0x24 ) {
  if (db->chip_id == PCI_DM9132_ID)
   phy_mode = phy_read(db->ioaddr,
        db->phy_addr, 7, db->chip_id) & 0xf000;
  else
   phy_mode = phy_read(db->ioaddr,
        db->phy_addr, 17, db->chip_id) & 0xf000;

  switch (phy_mode) {
  case 0x1000: db->op_mode = DMFE_10MHF; break;
  case 0x2000: db->op_mode = DMFE_10MFD; break;
  case 0x4000: db->op_mode = DMFE_100MHF; break;
  case 0x8000: db->op_mode = DMFE_100MFD; break;
  default: db->op_mode = DMFE_10MHF;
   ErrFlag = 1;
   break;
  }
 } else {
  db->op_mode = DMFE_10MHF;
  DMFE_DBUG(0, "Link Failed :", phy_mode);
  ErrFlag = 1;
 }

 return ErrFlag;
}
