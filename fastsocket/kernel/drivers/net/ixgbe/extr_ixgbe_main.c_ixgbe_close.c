
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;


 int ixgbe_down (struct ixgbe_adapter*) ;
 int ixgbe_fdir_filter_exit (struct ixgbe_adapter*) ;
 int ixgbe_free_all_rx_resources (struct ixgbe_adapter*) ;
 int ixgbe_free_all_tx_resources (struct ixgbe_adapter*) ;
 int ixgbe_free_irq (struct ixgbe_adapter*) ;
 int ixgbe_ptp_stop (struct ixgbe_adapter*) ;
 int ixgbe_release_hw_control (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_close(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);





 ixgbe_down(adapter);
 ixgbe_free_irq(adapter);

 ixgbe_fdir_filter_exit(adapter);

 ixgbe_free_all_tx_resources(adapter);
 ixgbe_free_all_rx_resources(adapter);

 ixgbe_release_hw_control(adapter);

 return 0;
}
