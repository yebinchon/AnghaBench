
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct dmfe_board_info {int HPNA_command; int HPNA_timer; int chip_id; int phy_addr; int ioaddr; } ;


 int phy_read (int ,int ,int,int ) ;
 int phy_write (int ,int ,int,int,int ) ;

__attribute__((used)) static void dmfe_HPNA_remote_cmd_chk(struct dmfe_board_info * db)
{
 uint phy_reg;


 phy_reg = phy_read(db->ioaddr, db->phy_addr, 17, db->chip_id) & 0x60;
 switch(phy_reg) {
 case 0x00: phy_reg = 0x0a00;break;
 case 0x20: phy_reg = 0x0900;break;
 case 0x40: phy_reg = 0x0600;break;
 case 0x60: phy_reg = 0x0500;break;
 }


 if ( phy_reg != (db->HPNA_command & 0x0f00) ) {
  phy_write(db->ioaddr, db->phy_addr, 16, db->HPNA_command,
     db->chip_id);
  db->HPNA_timer=8;
 } else
  db->HPNA_timer=600;
}
