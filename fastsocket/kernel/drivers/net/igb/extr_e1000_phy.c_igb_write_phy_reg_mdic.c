
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct e1000_phy_info {int addr; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int E1000_ERR_PARAM ;
 int E1000_ERR_PHY ;
 int E1000_GEN_POLL_TIMEOUT ;
 int E1000_MDIC ;
 int E1000_MDIC_ERROR ;
 int E1000_MDIC_OP_WRITE ;
 int E1000_MDIC_PHY_SHIFT ;
 int E1000_MDIC_READY ;
 int E1000_MDIC_REG_SHIFT ;
 int MAX_PHY_REG_ADDRESS ;
 int hw_dbg (char*,...) ;
 int rd32 (int ) ;
 int udelay (int) ;
 int wr32 (int ,int) ;

s32 igb_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
{
 struct e1000_phy_info *phy = &hw->phy;
 u32 i, mdic = 0;
 s32 ret_val = 0;

 if (offset > MAX_PHY_REG_ADDRESS) {
  hw_dbg("PHY Address %d is out of range\n", offset);
  ret_val = -E1000_ERR_PARAM;
  goto out;
 }





 mdic = (((u32)data) |
  (offset << E1000_MDIC_REG_SHIFT) |
  (phy->addr << E1000_MDIC_PHY_SHIFT) |
  (E1000_MDIC_OP_WRITE));

 wr32(E1000_MDIC, mdic);





 for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
  udelay(50);
  mdic = rd32(E1000_MDIC);
  if (mdic & E1000_MDIC_READY)
   break;
 }
 if (!(mdic & E1000_MDIC_READY)) {
  hw_dbg("MDI Write did not complete\n");
  ret_val = -E1000_ERR_PHY;
  goto out;
 }
 if (mdic & E1000_MDIC_ERROR) {
  hw_dbg("MDI Error\n");
  ret_val = -E1000_ERR_PHY;
  goto out;
 }

out:
 return ret_val;
}
