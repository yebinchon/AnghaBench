
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int mtu; int name; int dev_addr; } ;
struct ixgb_hw {int max_frame_size; } ;
struct ixgb_adapter {int have_msi; int watchdog_timer; int napi; int flags; TYPE_1__* pdev; struct ixgb_hw hw; int rx_ring; struct net_device* netdev; } ;
struct TYPE_3__ {int irq; } ;


 int CTRL0 ;
 int DPRINTK (int ,int ,char*,int) ;
 int ENET_FCS_LENGTH ;
 int ENET_HEADER_SIZE ;
 int ERR ;
 int IMC ;
 int IRQF_SHARED ;
 int IXGB_CTRL0_JFE ;
 int IXGB_DESC_UNUSED (int *) ;
 int IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS ;
 int IXGB_MFS_SHIFT ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_STATUS_PCIX_MODE ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int) ;
 int MFS ;
 int PROBE ;
 int STATUS ;
 int __IXGB_DOWN ;
 int clear_bit (int ,int *) ;
 int ixgb_alloc_rx_buffers (struct ixgb_adapter*,int ) ;
 int ixgb_configure_rx (struct ixgb_adapter*) ;
 int ixgb_configure_tx (struct ixgb_adapter*) ;
 int ixgb_intr ;
 int ixgb_irq_enable (struct ixgb_adapter*) ;
 int ixgb_rar_set (struct ixgb_hw*,int ,int ) ;
 int ixgb_restore_vlan (struct ixgb_adapter*) ;
 int ixgb_set_multi (struct net_device*) ;
 int ixgb_setup_rctl (struct ixgb_adapter*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int napi_enable (int *) ;
 int netif_wake_queue (struct net_device*) ;
 int pci_disable_msi (TYPE_1__*) ;
 int pci_enable_msi (TYPE_1__*) ;
 int request_irq (int ,int *,int,int ,struct net_device*) ;

int
ixgb_up(struct ixgb_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int err, irq_flags = IRQF_SHARED;
 int max_frame = netdev->mtu + ENET_HEADER_SIZE + ENET_FCS_LENGTH;
 struct ixgb_hw *hw = &adapter->hw;



 ixgb_rar_set(hw, netdev->dev_addr, 0);
 ixgb_set_multi(netdev);

 ixgb_restore_vlan(adapter);

 ixgb_configure_tx(adapter);
 ixgb_setup_rctl(adapter);
 ixgb_configure_rx(adapter);
 ixgb_alloc_rx_buffers(adapter, IXGB_DESC_UNUSED(&adapter->rx_ring));


 IXGB_WRITE_REG(&adapter->hw, IMC, 0xffffffff);


 if (IXGB_READ_REG(&adapter->hw, STATUS) & IXGB_STATUS_PCIX_MODE) {
  err = pci_enable_msi(adapter->pdev);
  if (!err) {
   adapter->have_msi = 1;
   irq_flags = 0;
  }

 }

 err = request_irq(adapter->pdev->irq, &ixgb_intr, irq_flags,
                   netdev->name, netdev);
 if (err) {
  if (adapter->have_msi)
   pci_disable_msi(adapter->pdev);
  DPRINTK(PROBE, ERR,
   "Unable to allocate interrupt Error: %d\n", err);
  return err;
 }

 if ((hw->max_frame_size != max_frame) ||
  (hw->max_frame_size !=
  (IXGB_READ_REG(hw, MFS) >> IXGB_MFS_SHIFT))) {

  hw->max_frame_size = max_frame;

  IXGB_WRITE_REG(hw, MFS, hw->max_frame_size << IXGB_MFS_SHIFT);

  if (hw->max_frame_size >
     IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS + ENET_FCS_LENGTH) {
   u32 ctrl0 = IXGB_READ_REG(hw, CTRL0);

   if (!(ctrl0 & IXGB_CTRL0_JFE)) {
    ctrl0 |= IXGB_CTRL0_JFE;
    IXGB_WRITE_REG(hw, CTRL0, ctrl0);
   }
  }
 }

 clear_bit(__IXGB_DOWN, &adapter->flags);

 napi_enable(&adapter->napi);
 ixgb_irq_enable(adapter);

 netif_wake_queue(netdev);

 mod_timer(&adapter->watchdog_timer, jiffies);

 return 0;
}
