
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
typedef int u16 ;
struct brcms_phy {int tbl_save_id; int tbl_save_offset; int tbl_data_lo; int tbl_data_hi; int tbl_addr; TYPE_1__* sh; } ;
struct TYPE_2__ {scalar_t__ chip; int chiprev; } ;


 scalar_t__ BCM43224_CHIP_ID ;
 int NPHY_TBL_ID_ANTSWCTRLLUT ;
 int read_phy_reg (struct brcms_phy*,int ) ;
 int write_phy_reg (struct brcms_phy*,int ,int) ;

void wlc_phy_table_data_write(struct brcms_phy *pi, uint width, u32 val)
{
 if ((pi->sh->chip == BCM43224_CHIP_ID) &&
     (pi->sh->chiprev == 1) &&
     (pi->tbl_save_id == NPHY_TBL_ID_ANTSWCTRLLUT)) {
  read_phy_reg(pi, pi->tbl_data_lo);

  write_phy_reg(pi, pi->tbl_addr,
         (pi->tbl_save_id << 10) | pi->tbl_save_offset);
  pi->tbl_save_offset++;
 }

 if (width == 32) {
  write_phy_reg(pi, pi->tbl_data_hi, (u16) (val >> 16));
  write_phy_reg(pi, pi->tbl_data_lo, (u16) val);
 } else {
  write_phy_reg(pi, pi->tbl_data_lo, (u16) val);
 }
}
