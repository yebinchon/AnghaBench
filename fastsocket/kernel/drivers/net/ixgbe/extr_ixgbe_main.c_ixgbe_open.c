
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_rx_pools; int num_tx_queues; int state; } ;


 int EBUSY ;
 int __IXGBE_TESTING ;
 int ixgbe_configure (struct ixgbe_adapter*) ;
 int ixgbe_free_all_rx_resources (struct ixgbe_adapter*) ;
 int ixgbe_free_all_tx_resources (struct ixgbe_adapter*) ;
 int ixgbe_ptp_init (struct ixgbe_adapter*) ;
 int ixgbe_request_irq (struct ixgbe_adapter*) ;
 int ixgbe_reset (struct ixgbe_adapter*) ;
 int ixgbe_setup_all_rx_resources (struct ixgbe_adapter*) ;
 int ixgbe_setup_all_tx_resources (struct ixgbe_adapter*) ;
 int ixgbe_up_complete (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_set_real_num_tx_queues (struct net_device*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ixgbe_open(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 int err;


 if (test_bit(__IXGBE_TESTING, &adapter->state))
  return -EBUSY;

 netif_carrier_off(netdev);


 err = ixgbe_setup_all_tx_resources(adapter);
 if (err)
  goto err_setup_tx;


 err = ixgbe_setup_all_rx_resources(adapter);
 if (err)
  goto err_setup_rx;

 ixgbe_configure(adapter);

 err = ixgbe_request_irq(adapter);
 if (err)
  goto err_req_irq;


 netif_set_real_num_tx_queues(netdev,
         adapter->num_rx_pools > 1 ? 1 :
         adapter->num_tx_queues);





 ixgbe_up_complete(adapter);

 return 0;

err_req_irq:
 ixgbe_free_all_rx_resources(adapter);
err_setup_rx:
 ixgbe_free_all_tx_resources(adapter);
err_setup_tx:
 ixgbe_reset(adapter);

 return err;
}
