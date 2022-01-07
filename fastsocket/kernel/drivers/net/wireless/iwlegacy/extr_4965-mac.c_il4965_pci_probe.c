
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int irq; int dev; } ;
struct TYPE_5__ {int firmware_loading_complete; } ;
struct il_priv {unsigned long long hw_base; struct ieee80211_hw* hw; struct pci_dev* pci_dev; int * workqueue; TYPE_2__ _4965; int status; int lock; TYPE_1__* addresses; int hw_ready; int hw_rev; struct il_cfg* cfg; int reg_lock; int inta_mask; int * debugfs_ops; int * ops; } ;
struct il_cfg {int name; } ;
struct ieee80211_hw {TYPE_3__* wiphy; struct il_priv* priv; } ;
struct TYPE_6__ {int n_addresses; TYPE_1__* addresses; } ;
struct TYPE_4__ {unsigned long long addr; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW ;
 int CSR_INI_SET_MASK ;
 int CSR_RESET ;
 int CSR_RESET_REG_FLAG_NEVO_RESET ;
 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int D_INFO (char*,...) ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int IL_ERR (char*,...) ;
 int IL_INFO (char*,int ,int ) ;
 int IL_WARN (char*) ;
 int IRQF_SHARED ;
 int PCIE_LINK_STATE_CLKPM ;
 int PCIE_LINK_STATE_L0S ;
 int PCIE_LINK_STATE_L1 ;
 int PCI_CFG_RETRY_TIMEOUT ;
 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int SET_IEEE80211_DEV (struct ieee80211_hw*,int *) ;
 int S_RFKILL ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_wr (struct il_priv*,int ,int ) ;
 int clear_bit (int ,int *) ;
 int destroy_workqueue (int *) ;
 int free_irq (int ,struct il_priv*) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int il4965_debugfs_ops ;
 int il4965_eeprom_check_version (struct il_priv*) ;
 int il4965_eeprom_get_mac (struct il_priv*,unsigned long long) ;
 int il4965_hw_detect (struct il_priv*) ;
 int il4965_init_drv (struct il_priv*) ;
 int il4965_mac_ops ;
 int il4965_ops ;
 int il4965_prepare_card_hw (struct il_priv*) ;
 int il4965_request_firmware (struct il_priv*,int) ;
 int il4965_set_hw_params (struct il_priv*) ;
 int il4965_setup_deferred_work (struct il_priv*) ;
 int il4965_setup_handlers (struct il_priv*) ;
 int il4965_uninit_drv (struct il_priv*) ;
 int il_disable_interrupts (struct il_priv*) ;
 int il_eeprom_free (struct il_priv*) ;
 int il_eeprom_init (struct il_priv*) ;
 int il_enable_rfkill_int (struct il_priv*) ;
 int il_isr ;
 int il_power_initialize (struct il_priv*) ;
 int init_completion (int *) ;
 int iounmap (unsigned long long) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_link_state (struct pci_dev*,int) ;
 int pci_disable_msi (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 unsigned long long pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct il_priv*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int request_irq (int ,int ,int ,int ,struct il_priv*) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 int wiphy_rfkill_set_hw_state (TYPE_3__*,int ) ;

__attribute__((used)) static int
il4965_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int err = 0;
 struct il_priv *il;
 struct ieee80211_hw *hw;
 struct il_cfg *cfg = (struct il_cfg *)(ent->driver_data);
 unsigned long flags;
 u16 pci_cmd;





 hw = ieee80211_alloc_hw(sizeof(struct il_priv), &il4965_mac_ops);
 if (!hw) {
  err = -ENOMEM;
  goto out;
 }
 il = hw->priv;
 il->hw = hw;
 SET_IEEE80211_DEV(hw, &pdev->dev);

 D_INFO("*** LOAD DRIVER ***\n");
 il->cfg = cfg;
 il->ops = &il4965_ops;



 il->pci_dev = pdev;
 il->inta_mask = CSR_INI_SET_MASK;




 pci_disable_link_state(pdev,
          PCIE_LINK_STATE_L0S | PCIE_LINK_STATE_L1 |
          PCIE_LINK_STATE_CLKPM);

 if (pci_enable_device(pdev)) {
  err = -ENODEV;
  goto out_ieee80211_free_hw;
 }

 pci_set_master(pdev);

 err = pci_set_dma_mask(pdev, DMA_BIT_MASK(36));
 if (!err)
  err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(36));
 if (err) {
  err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (!err)
   err =
       pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));

  if (err) {
   IL_WARN("No suitable DMA available.\n");
   goto out_pci_disable_device;
  }
 }

 err = pci_request_regions(pdev, DRV_NAME);
 if (err)
  goto out_pci_disable_device;

 pci_set_drvdata(pdev, il);




 il->hw_base = pci_ioremap_bar(pdev, 0);
 if (!il->hw_base) {
  err = -ENODEV;
  goto out_pci_release_regions;
 }

 D_INFO("pci_resource_len = 0x%08llx\n",
        (unsigned long long)pci_resource_len(pdev, 0));
 D_INFO("pci_resource_base = %p\n", il->hw_base);




 spin_lock_init(&il->reg_lock);
 spin_lock_init(&il->lock);






 _il_wr(il, CSR_RESET, CSR_RESET_REG_FLAG_NEVO_RESET);

 il4965_hw_detect(il);
 IL_INFO("Detected %s, REV=0x%X\n", il->cfg->name, il->hw_rev);



 pci_write_config_byte(pdev, PCI_CFG_RETRY_TIMEOUT, 0x00);

 il4965_prepare_card_hw(il);
 if (!il->hw_ready) {
  IL_WARN("Failed, HW not ready\n");
  err = -EIO;
  goto out_iounmap;
 }





 err = il_eeprom_init(il);
 if (err) {
  IL_ERR("Unable to init EEPROM\n");
  goto out_iounmap;
 }
 err = il4965_eeprom_check_version(il);
 if (err)
  goto out_free_eeprom;


 il4965_eeprom_get_mac(il, il->addresses[0].addr);
 D_INFO("MAC address: %pM\n", il->addresses[0].addr);
 il->hw->wiphy->addresses = il->addresses;
 il->hw->wiphy->n_addresses = 1;




 il4965_set_hw_params(il);





 err = il4965_init_drv(il);
 if (err)
  goto out_free_eeprom;





 spin_lock_irqsave(&il->lock, flags);
 il_disable_interrupts(il);
 spin_unlock_irqrestore(&il->lock, flags);

 pci_enable_msi(il->pci_dev);

 err = request_irq(il->pci_dev->irq, il_isr, IRQF_SHARED, DRV_NAME, il);
 if (err) {
  IL_ERR("Error allocating IRQ %d\n", il->pci_dev->irq);
  goto out_disable_msi;
 }

 il4965_setup_deferred_work(il);
 il4965_setup_handlers(il);






 pci_read_config_word(il->pci_dev, PCI_COMMAND, &pci_cmd);
 if (pci_cmd & PCI_COMMAND_INTX_DISABLE) {
  pci_cmd &= ~PCI_COMMAND_INTX_DISABLE;
  pci_write_config_word(il->pci_dev, PCI_COMMAND, pci_cmd);
 }

 il_enable_rfkill_int(il);


 if (_il_rd(il, CSR_GP_CNTRL) & CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW)
  clear_bit(S_RFKILL, &il->status);
 else
  set_bit(S_RFKILL, &il->status);

 wiphy_rfkill_set_hw_state(il->hw->wiphy,
      test_bit(S_RFKILL, &il->status));

 il_power_initialize(il);

 init_completion(&il->_4965.firmware_loading_complete);

 err = il4965_request_firmware(il, 1);
 if (err)
  goto out_destroy_workqueue;

 return 0;

out_destroy_workqueue:
 destroy_workqueue(il->workqueue);
 il->workqueue = ((void*)0);
 free_irq(il->pci_dev->irq, il);
out_disable_msi:
 pci_disable_msi(il->pci_dev);
 il4965_uninit_drv(il);
out_free_eeprom:
 il_eeprom_free(il);
out_iounmap:
 iounmap(il->hw_base);
out_pci_release_regions:
 pci_set_drvdata(pdev, ((void*)0));
 pci_release_regions(pdev);
out_pci_disable_device:
 pci_disable_device(pdev);
out_ieee80211_free_hw:
 ieee80211_free_hw(il->hw);
out:
 return err;
}
