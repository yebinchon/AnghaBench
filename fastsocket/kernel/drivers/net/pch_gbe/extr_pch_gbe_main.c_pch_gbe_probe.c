
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {int reg; TYPE_1__ mac; struct pch_gbe_adapter* back; } ;
struct pch_gbe_adapter {TYPE_2__ hw; int rx_ring; int tx_ring; int wake_up_evt; int reset_task; int watchdog_timer; int napi; struct pci_dev* pdev; struct net_device* netdev; } ;
struct net_device {int features; int dev_addr; int addr_len; int watchdog_timeo; int * netdev_ops; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int KBUILD_MODNAME ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int PCH_GBE_PCI_BAR ;
 int PCH_GBE_RX_WEIGHT ;
 int PCH_GBE_WATCHDOG_PERIOD ;
 int PCH_GBE_WL_INIT_SETTING ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int device_set_wakeup_enable (int *,int) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int is_valid_ether_addr (int ) ;
 int kfree (int ) ;
 int memcpy (int ,int ,int ) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int netif_stop_queue (struct net_device*) ;
 int pch_gbe_check_options (struct pch_gbe_adapter*) ;
 int pch_gbe_hal_get_bus_info (TYPE_2__*) ;
 int pch_gbe_hal_phy_hw_reset (TYPE_2__*) ;
 int pch_gbe_hal_read_mac_addr (TYPE_2__*) ;
 int pch_gbe_init_phy (struct pch_gbe_adapter*) ;
 int pch_gbe_mac_load_mac_addr (TYPE_2__*) ;
 int pch_gbe_mac_reset_hw (TYPE_2__*) ;
 int pch_gbe_napi_poll ;
 int pch_gbe_netdev_ops ;
 int pch_gbe_reset (struct pch_gbe_adapter*) ;
 int pch_gbe_reset_task ;
 int pch_gbe_set_ethtool_ops (struct net_device*) ;
 int pch_gbe_sw_init (struct pch_gbe_adapter*) ;
 int pch_gbe_watchdog ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int register_netdev (struct net_device*) ;
 int setup_timer (int *,int ,unsigned long) ;

__attribute__((used)) static int pch_gbe_probe(struct pci_dev *pdev,
     const struct pci_device_id *pci_id)
{
 struct net_device *netdev;
 struct pch_gbe_adapter *adapter;
 int ret;

 ret = pci_enable_device(pdev);
 if (ret)
  return ret;

 if (pci_set_dma_mask(pdev, DMA_BIT_MASK(64))
  || pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64))) {
  ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (ret) {
   ret = pci_set_consistent_dma_mask(pdev,
         DMA_BIT_MASK(32));
   if (ret) {
    dev_err(&pdev->dev, "ERR: No usable DMA "
     "configuration, aborting\n");
    goto err_disable_device;
   }
  }
 }

 ret = pci_request_regions(pdev, KBUILD_MODNAME);
 if (ret) {
  dev_err(&pdev->dev,
   "ERR: Can't reserve PCI I/O and memory resources\n");
  goto err_disable_device;
 }
 pci_set_master(pdev);

 netdev = alloc_etherdev((int)sizeof(struct pch_gbe_adapter));
 if (!netdev) {
  ret = -ENOMEM;
  dev_err(&pdev->dev,
   "ERR: Can't allocate and set up an Ethernet device\n");
  goto err_release_pci;
 }
 SET_NETDEV_DEV(netdev, &pdev->dev);

 pci_set_drvdata(pdev, netdev);
 adapter = netdev_priv(netdev);
 adapter->netdev = netdev;
 adapter->pdev = pdev;
 adapter->hw.back = adapter;
 adapter->hw.reg = pci_iomap(pdev, PCH_GBE_PCI_BAR, 0);
 if (!adapter->hw.reg) {
  ret = -EIO;
  dev_err(&pdev->dev, "Can't ioremap\n");
  goto err_free_netdev;
 }

 netdev->netdev_ops = &pch_gbe_netdev_ops;
 netdev->watchdog_timeo = PCH_GBE_WATCHDOG_PERIOD;
 netif_napi_add(netdev, &adapter->napi,
         pch_gbe_napi_poll, PCH_GBE_RX_WEIGHT);
 netdev->features = NETIF_F_RXCSUM |
  NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
 pch_gbe_set_ethtool_ops(netdev);

 pch_gbe_mac_load_mac_addr(&adapter->hw);
 pch_gbe_mac_reset_hw(&adapter->hw);


 ret = pch_gbe_sw_init(adapter);
 if (ret)
  goto err_iounmap;


 ret = pch_gbe_init_phy(adapter);
 if (ret) {
  dev_err(&pdev->dev, "PHY initialize error\n");
  goto err_free_adapter;
 }
 pch_gbe_hal_get_bus_info(&adapter->hw);


 ret = pch_gbe_hal_read_mac_addr(&adapter->hw);
 if (ret) {
  dev_err(&pdev->dev, "MAC address Read Error\n");
  goto err_free_adapter;
 }

 memcpy(netdev->dev_addr, adapter->hw.mac.addr, netdev->addr_len);
 if (!is_valid_ether_addr(netdev->dev_addr)) {






  dev_err(&pdev->dev, "Invalid MAC address, "
                      "interface disabled.\n");
 }
 setup_timer(&adapter->watchdog_timer, pch_gbe_watchdog,
      (unsigned long)adapter);

 INIT_WORK(&adapter->reset_task, pch_gbe_reset_task);

 pch_gbe_check_options(adapter);


 adapter->wake_up_evt = PCH_GBE_WL_INIT_SETTING;
 dev_info(&pdev->dev, "MAC address : %pM\n", netdev->dev_addr);


 pch_gbe_reset(adapter);

 ret = register_netdev(netdev);
 if (ret)
  goto err_free_adapter;

 netif_carrier_off(netdev);
 netif_stop_queue(netdev);

 dev_dbg(&pdev->dev, "OKIsemi(R) PCH Network Connection\n");

 device_set_wakeup_enable(&pdev->dev, 1);
 return 0;

err_free_adapter:
 pch_gbe_hal_phy_hw_reset(&adapter->hw);
 kfree(adapter->tx_ring);
 kfree(adapter->rx_ring);
err_iounmap:
 iounmap(adapter->hw.reg);
err_free_netdev:
 free_netdev(netdev);
err_release_pci:
 pci_release_regions(pdev);
err_disable_device:
 pci_disable_device(pdev);
 return ret;
}
