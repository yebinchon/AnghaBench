
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ prtad; } ;
struct TYPE_4__ {TYPE_1__ mdio; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int IXGBE_ERR_PHY ;
 scalar_t__ IXGBE_MDIO_COMMAND_TIMEOUT ;
 int IXGBE_MSCA ;
 scalar_t__ IXGBE_MSCA_ADDR_CYCLE ;
 scalar_t__ IXGBE_MSCA_DEV_TYPE_SHIFT ;
 scalar_t__ IXGBE_MSCA_MDI_COMMAND ;
 scalar_t__ IXGBE_MSCA_NP_ADDR_SHIFT ;
 scalar_t__ IXGBE_MSCA_PHY_ADDR_SHIFT ;
 scalar_t__ IXGBE_MSCA_WRITE ;
 int IXGBE_MSRWD ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int udelay (int) ;

s32 ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
    u32 device_type, u16 phy_data)
{
 u32 i, command;


 IXGBE_WRITE_REG(hw, IXGBE_MSRWD, (u32)phy_data);


 command = ((reg_addr << IXGBE_MSCA_NP_ADDR_SHIFT) |
     (device_type << IXGBE_MSCA_DEV_TYPE_SHIFT) |
     (hw->phy.mdio.prtad << IXGBE_MSCA_PHY_ADDR_SHIFT) |
     (IXGBE_MSCA_ADDR_CYCLE | IXGBE_MSCA_MDI_COMMAND));

 IXGBE_WRITE_REG(hw, IXGBE_MSCA, command);






 for (i = 0; i < IXGBE_MDIO_COMMAND_TIMEOUT; i++) {
  udelay(10);

  command = IXGBE_READ_REG(hw, IXGBE_MSCA);
  if ((command & IXGBE_MSCA_MDI_COMMAND) == 0)
   break;
 }

 if ((command & IXGBE_MSCA_MDI_COMMAND) != 0) {
  hw_dbg(hw, "PHY address cmd didn't complete\n");
  return IXGBE_ERR_PHY;
 }





 command = ((reg_addr << IXGBE_MSCA_NP_ADDR_SHIFT) |
     (device_type << IXGBE_MSCA_DEV_TYPE_SHIFT) |
     (hw->phy.mdio.prtad << IXGBE_MSCA_PHY_ADDR_SHIFT) |
     (IXGBE_MSCA_WRITE | IXGBE_MSCA_MDI_COMMAND));

 IXGBE_WRITE_REG(hw, IXGBE_MSCA, command);





 for (i = 0; i < IXGBE_MDIO_COMMAND_TIMEOUT; i++) {
  udelay(10);

  command = IXGBE_READ_REG(hw, IXGBE_MSCA);
  if ((command & IXGBE_MSCA_MDI_COMMAND) == 0)
   break;
 }

 if ((command & IXGBE_MSCA_MDI_COMMAND) != 0) {
  hw_dbg(hw, "PHY write cmd didn't complete\n");
  return IXGBE_ERR_PHY;
 }

 return 0;
}
