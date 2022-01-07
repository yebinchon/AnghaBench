
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int dev; } ;
struct net_device {int addr_len; int features; int vlan_features; int dev_addr; int name; int * perm_addr; } ;
struct ixgbevf_info {int mac; int * mac_ops; } ;
struct TYPE_6__ {unsigned long data; int function; } ;
struct TYPE_5__ {int type; int * addr; int ops; } ;
struct TYPE_4__ {int ops; } ;
struct ixgbe_hw {int hw_addr; TYPE_2__ mac; TYPE_1__ mbx; struct ixgbevf_adapter* back; } ;
struct ixgbevf_adapter {int bd_number; int watchdog_task; int reset_task; TYPE_3__ watchdog_timer; struct ixgbe_hw hw; int msg_enable; struct pci_dev* pdev; struct net_device* netdev; } ;
struct ixgbe_mbx_operations {int dummy; } ;


 int DEFAULT_MSG_ENABLE ;
 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int MAX_TX_QUEUES ;
 int NETIF_F_GRO ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_VLAN_FILTER ;
 int NETIF_F_HW_VLAN_RX ;
 int NETIF_F_HW_VLAN_TX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int debug ;
 int dev_err (int *,char*,...) ;
 int dma_set_coherent_mask (int *,int ) ;
 int dma_set_mask (int *,int ) ;
 int free_netdev (struct net_device*) ;
 int hw_dbg (struct ixgbe_hw*,char*,...) ;
 int init_timer (TYPE_3__*) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int is_valid_ether_addr (int ) ;
 int ixgbevf_assign_netdev_ops (struct net_device*) ;
 int ixgbevf_clear_interrupt_scheme (struct ixgbevf_adapter*) ;
 int ixgbevf_driver_name ;
 struct ixgbevf_info** ixgbevf_info_tbl ;
 int ixgbevf_init_interrupt_scheme (struct ixgbevf_adapter*) ;
 int ixgbevf_init_last_counter_stats (struct ixgbevf_adapter*) ;
 int ixgbevf_mbx_ops ;
 int ixgbevf_reset_interrupt_capability (struct ixgbevf_adapter*) ;
 int ixgbevf_reset_task ;
 int ixgbevf_sw_init (struct ixgbevf_adapter*) ;
 int ixgbevf_watchdog ;
 int ixgbevf_watchdog_task ;
 int memcpy (int *,int *,int) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pr_err (char*) ;
 int register_netdev (struct net_device*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int ixgbevf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct net_device *netdev;
 struct ixgbevf_adapter *adapter = ((void*)0);
 struct ixgbe_hw *hw = ((void*)0);
 const struct ixgbevf_info *ii = ixgbevf_info_tbl[ent->driver_data];
 static int cards_found;
 int err, pci_using_dac;

 err = pci_enable_device(pdev);
 if (err)
  return err;

 if (!dma_set_mask(&pdev->dev, DMA_BIT_MASK(64)) &&
     !dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(64))) {
  pci_using_dac = 1;
 } else {
  err = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
  if (err) {
   err = dma_set_coherent_mask(&pdev->dev,
          DMA_BIT_MASK(32));
   if (err) {
    dev_err(&pdev->dev, "No usable DMA "
     "configuration, aborting\n");
    goto err_dma;
   }
  }
  pci_using_dac = 0;
 }

 err = pci_request_regions(pdev, ixgbevf_driver_name);
 if (err) {
  dev_err(&pdev->dev, "pci_request_regions failed 0x%x\n", err);
  goto err_pci_reg;
 }

 pci_set_master(pdev);

 netdev = alloc_etherdev_mq(sizeof(struct ixgbevf_adapter),
       MAX_TX_QUEUES);
 if (!netdev) {
  err = -ENOMEM;
  goto err_alloc_etherdev;
 }

 SET_NETDEV_DEV(netdev, &pdev->dev);

 pci_set_drvdata(pdev, netdev);
 adapter = netdev_priv(netdev);

 adapter->netdev = netdev;
 adapter->pdev = pdev;
 hw = &adapter->hw;
 hw->back = adapter;
 adapter->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);





 pci_save_state(pdev);

 hw->hw_addr = ioremap(pci_resource_start(pdev, 0),
         pci_resource_len(pdev, 0));
 if (!hw->hw_addr) {
  err = -EIO;
  goto err_ioremap;
 }

 ixgbevf_assign_netdev_ops(netdev);

 adapter->bd_number = cards_found;


 memcpy(&hw->mac.ops, ii->mac_ops, sizeof(hw->mac.ops));
 hw->mac.type = ii->mac;

 memcpy(&hw->mbx.ops, &ixgbevf_mbx_ops,
        sizeof(struct ixgbe_mbx_operations));


 err = ixgbevf_sw_init(adapter);
 if (err)
  goto err_sw_init;


 memcpy(netdev->perm_addr, adapter->hw.mac.addr, netdev->addr_len);

 if (!is_valid_ether_addr(netdev->dev_addr)) {
  pr_err("invalid MAC address\n");
  err = -EIO;
  goto err_sw_init;
 }

 netdev->features = NETIF_F_SG |
      NETIF_F_IP_CSUM |
      NETIF_F_HW_VLAN_TX |
      NETIF_F_HW_VLAN_RX |
      NETIF_F_HW_VLAN_FILTER;

 netdev->features |= NETIF_F_IPV6_CSUM;
 netdev->features |= NETIF_F_TSO;
 netdev->features |= NETIF_F_TSO6;
 netdev->features |= NETIF_F_GRO;
 netdev->vlan_features |= NETIF_F_TSO;
 netdev->vlan_features |= NETIF_F_TSO6;
 netdev->vlan_features |= NETIF_F_IP_CSUM;
 netdev->vlan_features |= NETIF_F_IPV6_CSUM;
 netdev->vlan_features |= NETIF_F_SG;

 if (pci_using_dac)
  netdev->features |= NETIF_F_HIGHDMA;

 init_timer(&adapter->watchdog_timer);
 adapter->watchdog_timer.function = ixgbevf_watchdog;
 adapter->watchdog_timer.data = (unsigned long)adapter;

 INIT_WORK(&adapter->reset_task, ixgbevf_reset_task);
 INIT_WORK(&adapter->watchdog_task, ixgbevf_watchdog_task);

 err = ixgbevf_init_interrupt_scheme(adapter);
 if (err)
  goto err_sw_init;

 strcpy(netdev->name, "eth%d");

 err = register_netdev(netdev);
 if (err)
  goto err_register;

 netif_carrier_off(netdev);

 ixgbevf_init_last_counter_stats(adapter);


 hw_dbg(hw, "%pM\n", netdev->dev_addr);

 hw_dbg(hw, "MAC: %d\n", hw->mac.type);

 hw_dbg(hw, "Intel(R) 82599 Virtual Function\n");
 cards_found++;
 return 0;

err_register:
 ixgbevf_clear_interrupt_scheme(adapter);
err_sw_init:
 ixgbevf_reset_interrupt_capability(adapter);
 iounmap(hw->hw_addr);
err_ioremap:
 free_netdev(netdev);
err_alloc_etherdev:
 pci_release_regions(pdev);
err_pci_reg:
err_dma:
 pci_disable_device(pdev);
 return err;
}
