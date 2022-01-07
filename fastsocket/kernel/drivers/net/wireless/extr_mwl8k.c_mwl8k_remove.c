
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mwl8k_priv {scalar_t__ fw_state; int sram; int regs; int cookie_dma; int cookie; int pdev; int poll_rx_task; int poll_tx_task; int firmware_loading_complete; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 scalar_t__ FW_STATE_ERROR ;
 int INT_MAX ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int mwl8k_hw_reset (struct mwl8k_priv*) ;
 int mwl8k_rxq_deinit (struct ieee80211_hw*,int ) ;
 int mwl8k_tx_queues (struct mwl8k_priv*) ;
 int mwl8k_txq_deinit (struct ieee80211_hw*,int) ;
 int mwl8k_txq_reclaim (struct ieee80211_hw*,int,int ,int) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (int ,int,int ,int ) ;
 struct ieee80211_hw* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int tasklet_kill (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void mwl8k_remove(struct pci_dev *pdev)
{
 struct ieee80211_hw *hw = pci_get_drvdata(pdev);
 struct mwl8k_priv *priv;
 int i;

 if (hw == ((void*)0))
  return;
 priv = hw->priv;

 wait_for_completion(&priv->firmware_loading_complete);

 if (priv->fw_state == FW_STATE_ERROR) {
  mwl8k_hw_reset(priv);
  goto unmap;
 }

 ieee80211_stop_queues(hw);

 ieee80211_unregister_hw(hw);


 tasklet_kill(&priv->poll_tx_task);
 tasklet_kill(&priv->poll_rx_task);


 mwl8k_hw_reset(priv);


 for (i = 0; i < mwl8k_tx_queues(priv); i++)
  mwl8k_txq_reclaim(hw, i, INT_MAX, 1);

 for (i = 0; i < mwl8k_tx_queues(priv); i++)
  mwl8k_txq_deinit(hw, i);

 mwl8k_rxq_deinit(hw, 0);

 pci_free_consistent(priv->pdev, 4, priv->cookie, priv->cookie_dma);

unmap:
 pci_iounmap(pdev, priv->regs);
 pci_iounmap(pdev, priv->sram);
 pci_set_drvdata(pdev, ((void*)0));
 ieee80211_free_hw(hw);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
