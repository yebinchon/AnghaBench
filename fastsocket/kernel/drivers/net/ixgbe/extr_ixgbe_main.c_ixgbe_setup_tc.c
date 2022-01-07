
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int requested_mode; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_3__ fc; TYPE_2__ mac; } ;
struct TYPE_6__ {scalar_t__ pg_tcs; } ;
struct TYPE_10__ {int pfc_mode_enable; TYPE_1__ num_tcs; } ;
struct TYPE_9__ {int pfc_mode_enable; } ;
struct ixgbe_adapter {TYPE_5__ dcb_cfg; TYPE_4__ temp_dcb_cfg; int flags; int last_lfc_mode; struct ixgbe_hw hw; } ;


 int EINVAL ;
 int IXGBE_FLAG_DCB_ENABLED ;
 scalar_t__ MAX_TRAFFIC_CLASS ;
 int ixgbe_clear_interrupt_scheme (struct ixgbe_adapter*) ;
 int ixgbe_close (struct net_device*) ;
 int ixgbe_fc_none ;
 int ixgbe_init_interrupt_scheme (struct ixgbe_adapter*) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_open (struct net_device*) ;
 int ixgbe_set_prio_tc_map (struct ixgbe_adapter*) ;
 int ixgbe_validate_rtr (struct ixgbe_adapter*,scalar_t__) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int netdev_reset_tc (struct net_device*) ;
 int netdev_set_num_tc (struct net_device*,scalar_t__) ;
 scalar_t__ netif_running (struct net_device*) ;

int ixgbe_setup_tc(struct net_device *dev, u8 tc)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 struct ixgbe_hw *hw = &adapter->hw;


 if (tc > adapter->dcb_cfg.num_tcs.pg_tcs ||
     (hw->mac.type == ixgbe_mac_82598EB &&
      tc < MAX_TRAFFIC_CLASS))
  return -EINVAL;





 if (netif_running(dev))
  ixgbe_close(dev);
 ixgbe_clear_interrupt_scheme(adapter);
 ixgbe_init_interrupt_scheme(adapter);

 if (netif_running(dev))
  return ixgbe_open(dev);

 return 0;
}
