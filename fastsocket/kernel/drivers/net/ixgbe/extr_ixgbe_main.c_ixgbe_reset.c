
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* init_hw ) (struct ixgbe_hw*) ;int (* set_vmdq_san_mac ) (struct ixgbe_hw*,int ) ;int (* set_rar ) (struct ixgbe_hw*,int ,int ,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; scalar_t__ san_mac_rar_index; int addr; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags2; int state; int flags; struct ixgbe_hw hw; } ;






 int IXGBE_FLAG2_SEARCH_FOR_SFP ;
 int IXGBE_FLAG2_SFP_NEEDS_RESET ;
 int IXGBE_FLAG_NEED_LINK_CONFIG ;
 int IXGBE_RAH_AV ;
 int VMDQ_P (int ) ;
 int __IXGBE_IN_SFP_INIT ;
 int __IXGBE_PTP_RUNNING ;
 int clear_bit (int ,int *) ;
 int e_dev_err (char*,...) ;
 int e_dev_warn (char*) ;
 int ixgbe_ptp_reset (struct ixgbe_adapter*) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int ,int ) ;
 int stub3 (struct ixgbe_hw*,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

void ixgbe_reset(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int err;


 while (test_and_set_bit(__IXGBE_IN_SFP_INIT, &adapter->state))
  usleep_range(1000, 2000);


 adapter->flags2 &= ~(IXGBE_FLAG2_SEARCH_FOR_SFP |
        IXGBE_FLAG2_SFP_NEEDS_RESET);
 adapter->flags &= ~IXGBE_FLAG_NEED_LINK_CONFIG;

 err = hw->mac.ops.init_hw(hw);
 switch (err) {
 case 0:
 case 129:
 case 128:
  break;
 case 130:
  e_dev_err("master disable timed out\n");
  break;
 case 131:

  e_dev_warn("This device is a pre-production adapter/LOM. "
      "Please be aware there may be issues associated with "
      "your hardware.  If you are experiencing problems "
      "please contact your Intel or hardware "
      "representative who provided you with this "
      "hardware.\n");
  break;
 default:
  e_dev_err("Hardware Error: %d\n", err);
 }

 clear_bit(__IXGBE_IN_SFP_INIT, &adapter->state);


 hw->mac.ops.set_rar(hw, 0, hw->mac.addr, VMDQ_P(0), IXGBE_RAH_AV);


 if (hw->mac.san_mac_rar_index)
  hw->mac.ops.set_vmdq_san_mac(hw, VMDQ_P(0));





}
