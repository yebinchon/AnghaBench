
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* enable_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; int service_timer; int link_check_timeout; int netdev; int state; struct ixgbe_hw hw; } ;


 int IXGBE_CTRL_EXT ;
 int IXGBE_CTRL_EXT_PFRSTD ;
 int IXGBE_EICR ;
 int IXGBE_ESDP ;
 int IXGBE_ESDP_SDP1 ;
 int IXGBE_FLAG_FAN_FAIL_CAPABLE ;
 int IXGBE_FLAG_MSIX_ENABLED ;
 int IXGBE_FLAG_NEED_LINK_UPDATE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int __IXGBE_DOWN ;
 int clear_bit (int ,int *) ;
 int drv ;
 int e_crit (int ,char*) ;
 int e_err (int ,char*,int) ;
 int ixgbe_configure_msi_and_legacy (struct ixgbe_adapter*) ;
 int ixgbe_configure_msix (struct ixgbe_adapter*) ;
 int ixgbe_get_hw_control (struct ixgbe_adapter*) ;
 int ixgbe_irq_enable (struct ixgbe_adapter*,int,int) ;
 scalar_t__ ixgbe_is_sfp (struct ixgbe_hw*) ;
 int ixgbe_napi_enable_all (struct ixgbe_adapter*) ;
 int ixgbe_non_sfp_link_config (struct ixgbe_hw*) ;
 int ixgbe_setup_gpie (struct ixgbe_adapter*) ;
 int ixgbe_sfp_link_config (struct ixgbe_adapter*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int netif_tx_start_all_queues (int ) ;
 int probe ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static void ixgbe_up_complete(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int err;
 u32 ctrl_ext;

 ixgbe_get_hw_control(adapter);
 ixgbe_setup_gpie(adapter);

 if (adapter->flags & IXGBE_FLAG_MSIX_ENABLED)
  ixgbe_configure_msix(adapter);
 else
  ixgbe_configure_msi_and_legacy(adapter);


 if (hw->mac.ops.enable_tx_laser)
  hw->mac.ops.enable_tx_laser(hw);

 clear_bit(__IXGBE_DOWN, &adapter->state);
 ixgbe_napi_enable_all(adapter);

 if (ixgbe_is_sfp(hw)) {
  ixgbe_sfp_link_config(adapter);
 } else {
  err = ixgbe_non_sfp_link_config(hw);
  if (err)
   e_err(probe, "link_config FAILED %d\n", err);
 }


 IXGBE_READ_REG(hw, IXGBE_EICR);
 ixgbe_irq_enable(adapter, 1, 1);





 if (adapter->flags & IXGBE_FLAG_FAN_FAIL_CAPABLE) {
  u32 esdp = IXGBE_READ_REG(hw, IXGBE_ESDP);
  if (esdp & IXGBE_ESDP_SDP1)
   e_crit(drv, "Fan has stopped, replace the adapter\n");
 }


 netif_tx_start_all_queues(adapter->netdev);



 adapter->flags |= IXGBE_FLAG_NEED_LINK_UPDATE;
 adapter->link_check_timeout = jiffies;
 mod_timer(&adapter->service_timer, jiffies);


 ctrl_ext = IXGBE_READ_REG(hw, IXGBE_CTRL_EXT);
 ctrl_ext |= IXGBE_CTRL_EXT_PFRSTD;
 IXGBE_WRITE_REG(hw, IXGBE_CTRL_EXT, ctrl_ext);
}
