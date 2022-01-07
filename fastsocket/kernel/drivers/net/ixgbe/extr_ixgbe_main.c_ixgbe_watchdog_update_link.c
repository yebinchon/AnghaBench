
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int (* fc_enable ) (struct ixgbe_hw*) ;int (* check_link ) (struct ixgbe_hw*,int *,int*,int) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; } ;
struct TYPE_5__ {int pfc_mode_enable; } ;
struct ixgbe_adapter {int link_up; int flags; int link_speed; scalar_t__ link_check_timeout; TYPE_2__* ixgbe_ieee_pfc; TYPE_1__ dcb_cfg; struct ixgbe_hw hw; } ;
struct TYPE_6__ {int pfc_en; } ;


 int IXGBE_EIMC_LSC ;
 int IXGBE_EIMS ;
 int IXGBE_FLAG_DCB_ENABLED ;
 int IXGBE_FLAG_NEED_LINK_UPDATE ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 scalar_t__ IXGBE_TRY_LINK_TIMEOUT ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_set_rx_drop_en (struct ixgbe_adapter*) ;
 int jiffies ;
 int stub1 (struct ixgbe_hw*,int *,int*,int) ;
 int stub2 (struct ixgbe_hw*) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static void ixgbe_watchdog_update_link(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 link_speed = adapter->link_speed;
 bool link_up = adapter->link_up;
 bool pfc_en = adapter->dcb_cfg.pfc_mode_enable;

 if (!(adapter->flags & IXGBE_FLAG_NEED_LINK_UPDATE))
  return;

 if (hw->mac.ops.check_link) {
  hw->mac.ops.check_link(hw, &link_speed, &link_up, 0);
 } else {

  link_speed = IXGBE_LINK_SPEED_10GB_FULL;
  link_up = 1;
 }

 if (adapter->ixgbe_ieee_pfc)
  pfc_en |= !!(adapter->ixgbe_ieee_pfc->pfc_en);

 if (link_up && !((adapter->flags & IXGBE_FLAG_DCB_ENABLED) && pfc_en)) {
  hw->mac.ops.fc_enable(hw);
  ixgbe_set_rx_drop_en(adapter);
 }

 if (link_up ||
     time_after(jiffies, (adapter->link_check_timeout +
     IXGBE_TRY_LINK_TIMEOUT))) {
  adapter->flags &= ~IXGBE_FLAG_NEED_LINK_UPDATE;
  IXGBE_WRITE_REG(hw, IXGBE_EIMS, IXGBE_EIMC_LSC);
  IXGBE_WRITE_FLUSH(hw);
 }

 adapter->link_up = link_up;
 adapter->link_speed = link_speed;
}
