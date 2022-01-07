
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dev; int subsystem_device; int subsystem_vendor; int revision; int device; int vendor; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_7__ {int (* reset_hw ) (struct ixgbe_hw*) ;int (* init_hw ) (struct ixgbe_hw*) ;int (* get_mac_addr ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_8__ {int max_tx_queues; int max_rx_queues; int addr; TYPE_3__ ops; } ;
struct TYPE_5__ {int (* init_params ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; TYPE_2__ mbx; int subsystem_device_id; int subsystem_vendor_id; int revision_id; int device_id; int vendor_id; } ;
struct ixgbevf_adapter {int rx_itr_setting; int tx_itr_setting; int state; int flags; int rx_ring_count; int tx_ring_count; struct ixgbe_hw hw; int mbx_lock; struct net_device* netdev; struct pci_dev* pdev; } ;


 int IXGBEVF_DEFAULT_RXD ;
 int IXGBEVF_DEFAULT_TXD ;
 int IXGBE_FLAG_RX_CSUM_ENABLED ;
 int __IXGBEVF_DOWN ;
 int dev_info (int *,char*) ;
 int eth_hw_addr_random (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int ixgbevf_negotiate_api (struct ixgbevf_adapter*) ;
 int memcpy (int ,int ,int ) ;
 int pr_err (char*,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*) ;
 int stub4 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static int ixgbevf_sw_init(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct pci_dev *pdev = adapter->pdev;
 struct net_device *netdev = adapter->netdev;
 int err;



 hw->vendor_id = pdev->vendor;
 hw->device_id = pdev->device;
 hw->revision_id = pdev->revision;
 hw->subsystem_vendor_id = pdev->subsystem_vendor;
 hw->subsystem_device_id = pdev->subsystem_device;

 hw->mbx.ops.init_params(hw);


 hw->mac.max_tx_queues = 2;
 hw->mac.max_rx_queues = 2;


 spin_lock_init(&adapter->mbx_lock);

 err = hw->mac.ops.reset_hw(hw);
 if (err) {
  dev_info(&pdev->dev,
    "PF still in reset state.  Is the PF interface up?\n");
 } else {
  err = hw->mac.ops.init_hw(hw);
  if (err) {
   pr_err("init_shared_code failed: %d\n", err);
   goto out;
  }
  ixgbevf_negotiate_api(adapter);
  err = hw->mac.ops.get_mac_addr(hw, hw->mac.addr);
  if (err)
   dev_info(&pdev->dev, "Error reading MAC address\n");
  else if (is_zero_ether_addr(adapter->hw.mac.addr))
   dev_info(&pdev->dev,
     "MAC address not assigned by administrator.\n");
  memcpy(netdev->dev_addr, hw->mac.addr, netdev->addr_len);
 }

 if (!is_valid_ether_addr(netdev->dev_addr)) {
  dev_info(&pdev->dev, "Assigning random MAC address\n");
  eth_hw_addr_random(netdev);
  memcpy(hw->mac.addr, netdev->dev_addr, netdev->addr_len);
 }


 adapter->rx_itr_setting = 1;
 adapter->tx_itr_setting = 1;


 adapter->tx_ring_count = IXGBEVF_DEFAULT_TXD;
 adapter->rx_ring_count = IXGBEVF_DEFAULT_RXD;


 adapter->flags |= IXGBE_FLAG_RX_CSUM_ENABLED;

 set_bit(__IXGBEVF_DOWN, &adapter->state);
 return 0;

out:
 return err;
}
