
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* clear_hw_cntrs ) (struct ixgbe_hw*) ;int (* clear_vfta ) (struct ixgbe_hw*) ;int (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_7__ {int (* identify ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; int media_type; } ;
struct ixgbe_hw {int adapter_stopped; TYPE_2__ mac; TYPE_4__ phy; } ;
typedef int s32 ;


 int IXGBE_CTRL_EXT ;
 int IXGBE_CTRL_EXT_NS_DIS ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_setup_fc (struct ixgbe_hw*) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*) ;
 int stub4 (struct ixgbe_hw*) ;

s32 ixgbe_start_hw_generic(struct ixgbe_hw *hw)
{
 u32 ctrl_ext;


 hw->phy.media_type = hw->mac.ops.get_media_type(hw);


 hw->phy.ops.identify(hw);


 hw->mac.ops.clear_vfta(hw);


 hw->mac.ops.clear_hw_cntrs(hw);


 ctrl_ext = IXGBE_READ_REG(hw, IXGBE_CTRL_EXT);
 ctrl_ext |= IXGBE_CTRL_EXT_NS_DIS;
 IXGBE_WRITE_REG(hw, IXGBE_CTRL_EXT, ctrl_ext);
 IXGBE_WRITE_FLUSH(hw);


 ixgbe_setup_fc(hw);


 hw->adapter_stopped = 0;

 return 0;
}
