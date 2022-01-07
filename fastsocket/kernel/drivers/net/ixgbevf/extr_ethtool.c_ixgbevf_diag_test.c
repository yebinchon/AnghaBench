
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int state; int hw; } ;
struct ethtool_test {int flags; } ;


 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int __IXGBEVF_TESTING ;
 int clear_bit (int ,int *) ;
 int dev_close (struct net_device*) ;
 int dev_open (struct net_device*) ;
 int hw_dbg (int *,char*) ;
 scalar_t__ ixgbevf_link_test (struct ixgbevf_adapter*,int *) ;
 scalar_t__ ixgbevf_reg_test (struct ixgbevf_adapter*,int *) ;
 int ixgbevf_reset (struct ixgbevf_adapter*) ;
 int msleep_interruptible (int) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ixgbevf_diag_test(struct net_device *netdev,
         struct ethtool_test *eth_test, u64 *data)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 bool if_running = netif_running(netdev);

 set_bit(__IXGBEVF_TESTING, &adapter->state);
 if (eth_test->flags == ETH_TEST_FL_OFFLINE) {


  hw_dbg(&adapter->hw, "offline testing starting\n");



  if (ixgbevf_link_test(adapter, &data[1]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  if (if_running)

   dev_close(netdev);
  else
   ixgbevf_reset(adapter);

  hw_dbg(&adapter->hw, "register testing starting\n");
  if (ixgbevf_reg_test(adapter, &data[0]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  ixgbevf_reset(adapter);

  clear_bit(__IXGBEVF_TESTING, &adapter->state);
  if (if_running)
   dev_open(netdev);
 } else {
  hw_dbg(&adapter->hw, "online testing starting\n");

  if (ixgbevf_link_test(adapter, &data[1]))
   eth_test->flags |= ETH_TEST_FL_FAILED;


  data[0] = 0;

  clear_bit(__IXGBEVF_TESTING, &adapter->state);
 }
 msleep_interruptible(4 * 1000);
}
