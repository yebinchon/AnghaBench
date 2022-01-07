
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int mac_type; scalar_t__ phy_init_script; } ;


 int IGP01E1000_ANALOG_FUSE_BYPASS ;
 scalar_t__ IGP01E1000_ANALOG_FUSE_COARSE_10 ;
 int IGP01E1000_ANALOG_FUSE_COARSE_MASK ;
 int IGP01E1000_ANALOG_FUSE_COARSE_THRESH ;
 int IGP01E1000_ANALOG_FUSE_CONTROL ;
 int IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL ;
 scalar_t__ IGP01E1000_ANALOG_FUSE_FINE_1 ;
 scalar_t__ IGP01E1000_ANALOG_FUSE_FINE_10 ;
 int IGP01E1000_ANALOG_FUSE_FINE_MASK ;
 int IGP01E1000_ANALOG_FUSE_POLY_MASK ;
 int IGP01E1000_ANALOG_FUSE_STATUS ;
 int IGP01E1000_ANALOG_SPARE_FUSE_ENABLED ;
 int IGP01E1000_ANALOG_SPARE_FUSE_STATUS ;




 int e1000_read_phy_reg (struct e1000_hw*,int,int*) ;
 int e1000_write_phy_reg (struct e1000_hw*,int,int) ;
 int e_dbg (char*) ;
 int msleep (int) ;

__attribute__((used)) static void e1000_phy_init_script(struct e1000_hw *hw)
{
 u32 ret_val;
 u16 phy_saved_data;

 e_dbg("e1000_phy_init_script");

 if (hw->phy_init_script) {
  msleep(20);



  ret_val = e1000_read_phy_reg(hw, 0x2F5B, &phy_saved_data);


  e1000_write_phy_reg(hw, 0x2F5B, 0x0003);
  msleep(20);

  e1000_write_phy_reg(hw, 0x0000, 0x0140);
  msleep(5);

  switch (hw->mac_type) {
  case 131:
  case 129:
   e1000_write_phy_reg(hw, 0x1F95, 0x0001);
   e1000_write_phy_reg(hw, 0x1F71, 0xBD21);
   e1000_write_phy_reg(hw, 0x1F79, 0x0018);
   e1000_write_phy_reg(hw, 0x1F30, 0x1600);
   e1000_write_phy_reg(hw, 0x1F31, 0x0014);
   e1000_write_phy_reg(hw, 0x1F32, 0x161C);
   e1000_write_phy_reg(hw, 0x1F94, 0x0003);
   e1000_write_phy_reg(hw, 0x1F96, 0x003F);
   e1000_write_phy_reg(hw, 0x2010, 0x0008);
   break;

  case 130:
  case 128:
   e1000_write_phy_reg(hw, 0x1F73, 0x0099);
   break;
  default:
   break;
  }

  e1000_write_phy_reg(hw, 0x0000, 0x3300);
  msleep(20);


  e1000_write_phy_reg(hw, 0x2F5B, phy_saved_data);

  if (hw->mac_type == 129) {
   u16 fused, fine, coarse;


   e1000_read_phy_reg(hw,
        IGP01E1000_ANALOG_SPARE_FUSE_STATUS,
        &fused);

   if (!(fused & IGP01E1000_ANALOG_SPARE_FUSE_ENABLED)) {
    e1000_read_phy_reg(hw,
         IGP01E1000_ANALOG_FUSE_STATUS,
         &fused);

    fine = fused & IGP01E1000_ANALOG_FUSE_FINE_MASK;
    coarse =
        fused & IGP01E1000_ANALOG_FUSE_COARSE_MASK;

    if (coarse >
        IGP01E1000_ANALOG_FUSE_COARSE_THRESH) {
     coarse -=
         IGP01E1000_ANALOG_FUSE_COARSE_10;
     fine -= IGP01E1000_ANALOG_FUSE_FINE_1;
    } else if (coarse ==
        IGP01E1000_ANALOG_FUSE_COARSE_THRESH)
     fine -= IGP01E1000_ANALOG_FUSE_FINE_10;

    fused =
        (fused & IGP01E1000_ANALOG_FUSE_POLY_MASK) |
        (fine & IGP01E1000_ANALOG_FUSE_FINE_MASK) |
        (coarse &
         IGP01E1000_ANALOG_FUSE_COARSE_MASK);

    e1000_write_phy_reg(hw,
          IGP01E1000_ANALOG_FUSE_CONTROL,
          fused);
    e1000_write_phy_reg(hw,
          IGP01E1000_ANALOG_FUSE_BYPASS,
          IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL);
   }
  }
 }
}
