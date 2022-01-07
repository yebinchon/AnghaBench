
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct pci_dev {int irq; TYPE_1__ dev; } ;
struct TYPE_6__ {scalar_t__ bd; } ;
struct TYPE_5__ {int rfkill_poll; } ;
struct il_priv {int hw; scalar_t__ beacon_skb; int scan_cmd; int hw_base; int * workqueue; TYPE_3__ rxq; TYPE_2__ _3945; int lock; scalar_t__ mac80211_registered; int status; } ;


 int D_INFO (char*) ;
 int S_EXIT_PENDING ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int *) ;
 int dev_kfree_skb (scalar_t__) ;
 int flush_workqueue (int *) ;
 int free_irq (int ,struct il_priv*) ;
 int ieee80211_free_hw (int ) ;
 int ieee80211_unregister_hw (int ) ;
 int il3945_attribute_group ;
 int il3945_dealloc_ucode_pci (struct il_priv*) ;
 int il3945_down (struct il_priv*) ;
 int il3945_hw_txq_ctx_free (struct il_priv*) ;
 int il3945_rx_queue_free (struct il_priv*,TYPE_3__*) ;
 int il3945_synchronize_irq (struct il_priv*) ;
 int il3945_unset_hw_params (struct il_priv*) ;
 int il_apm_stop (struct il_priv*) ;
 int il_dbgfs_unregister (struct il_priv*) ;
 int il_disable_interrupts (struct il_priv*) ;
 int il_free_channel_map (struct il_priv*) ;
 int il_free_geos (struct il_priv*) ;
 int il_leds_exit (struct il_priv*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct il_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void
il3945_pci_remove(struct pci_dev *pdev)
{
 struct il_priv *il = pci_get_drvdata(pdev);
 unsigned long flags;

 if (!il)
  return;

 D_INFO("*** UNLOAD DRIVER ***\n");

 il_dbgfs_unregister(il);

 set_bit(S_EXIT_PENDING, &il->status);

 il_leds_exit(il);

 if (il->mac80211_registered) {
  ieee80211_unregister_hw(il->hw);
  il->mac80211_registered = 0;
 } else {
  il3945_down(il);
 }
 il_apm_stop(il);




 spin_lock_irqsave(&il->lock, flags);
 il_disable_interrupts(il);
 spin_unlock_irqrestore(&il->lock, flags);

 il3945_synchronize_irq(il);

 sysfs_remove_group(&pdev->dev.kobj, &il3945_attribute_group);

 cancel_delayed_work_sync(&il->_3945.rfkill_poll);

 il3945_dealloc_ucode_pci(il);

 if (il->rxq.bd)
  il3945_rx_queue_free(il, &il->rxq);
 il3945_hw_txq_ctx_free(il);

 il3945_unset_hw_params(il);


 flush_workqueue(il->workqueue);




 destroy_workqueue(il->workqueue);
 il->workqueue = ((void*)0);

 free_irq(pdev->irq, il);
 pci_disable_msi(pdev);

 iounmap(il->hw_base);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));

 il_free_channel_map(il);
 il_free_geos(il);
 kfree(il->scan_cmd);
 if (il->beacon_skb)
  dev_kfree_skb(il->beacon_skb);

 ieee80211_free_hw(il->hw);
}
