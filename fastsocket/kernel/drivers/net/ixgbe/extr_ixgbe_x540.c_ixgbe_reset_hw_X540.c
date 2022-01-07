
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ (* stop_adapter ) (struct ixgbe_hw*) ;int (* get_wwn_prefix ) (struct ixgbe_hw*,int *,int *) ;int (* set_rar ) (struct ixgbe_hw*,scalar_t__,int ,int ,int ) ;int (* get_san_mac_addr ) (struct ixgbe_hw*,int ) ;int (* init_rx_addrs ) (struct ixgbe_hw*) ;int (* get_mac_addr ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {int flags; int wwpn_prefix; int wwnn_prefix; TYPE_1__ ops; scalar_t__ num_rar_entries; scalar_t__ san_mac_rar_index; int san_addr; int perm_addr; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_CTRL ;
 int IXGBE_CTRL_RST ;
 int IXGBE_CTRL_RST_MASK ;
 scalar_t__ IXGBE_ERR_RESET_FAILED ;
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_RAH_AV ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXPBSIZE (int ) ;
 int IXGBE_RXPBSIZE_SHIFT ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ IXGBE_X540_MAX_TX_QUEUES ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int ixgbe_clear_tx_pending (struct ixgbe_hw*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ) ;
 int stub3 (struct ixgbe_hw*) ;
 int stub4 (struct ixgbe_hw*,int ) ;
 int stub5 (struct ixgbe_hw*,scalar_t__,int ,int ,int ) ;
 int stub6 (struct ixgbe_hw*,int *,int *) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
{
 s32 status;
 u32 ctrl, i;


 status = hw->mac.ops.stop_adapter(hw);
 if (status != 0)
  goto reset_hw_out;


 ixgbe_clear_tx_pending(hw);

mac_reset_top:
 ctrl = IXGBE_CTRL_RST;
 ctrl |= IXGBE_READ_REG(hw, IXGBE_CTRL);
 IXGBE_WRITE_REG(hw, IXGBE_CTRL, ctrl);
 IXGBE_WRITE_FLUSH(hw);


 for (i = 0; i < 10; i++) {
  udelay(1);
  ctrl = IXGBE_READ_REG(hw, IXGBE_CTRL);
  if (!(ctrl & IXGBE_CTRL_RST_MASK))
   break;
 }

 if (ctrl & IXGBE_CTRL_RST_MASK) {
  status = IXGBE_ERR_RESET_FAILED;
  hw_dbg(hw, "Reset polling failed to complete.\n");
 }
 msleep(100);






 if (hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED) {
  hw->mac.flags &= ~IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;
  goto mac_reset_top;
 }


 IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(0), 384 << IXGBE_RXPBSIZE_SHIFT);


 hw->mac.ops.get_mac_addr(hw, hw->mac.perm_addr);






 hw->mac.num_rar_entries = IXGBE_X540_MAX_TX_QUEUES;
 hw->mac.ops.init_rx_addrs(hw);


 hw->mac.ops.get_san_mac_addr(hw, hw->mac.san_addr);


 if (is_valid_ether_addr(hw->mac.san_addr)) {
  hw->mac.ops.set_rar(hw, hw->mac.num_rar_entries - 1,
                      hw->mac.san_addr, 0, IXGBE_RAH_AV);


  hw->mac.san_mac_rar_index = hw->mac.num_rar_entries - 1;


  hw->mac.num_rar_entries--;
 }


 hw->mac.ops.get_wwn_prefix(hw, &hw->mac.wwnn_prefix,
                            &hw->mac.wwpn_prefix);

reset_hw_out:
 return status;
}
