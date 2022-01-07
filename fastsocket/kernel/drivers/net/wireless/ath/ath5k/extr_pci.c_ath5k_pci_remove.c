
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {int iobase; } ;


 int ath5k_deinit_ah (struct ath5k_hw*) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ieee80211_hw* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_region (struct pci_dev*,int ) ;

__attribute__((used)) static void
ath5k_pci_remove(struct pci_dev *pdev)
{
 struct ieee80211_hw *hw = pci_get_drvdata(pdev);
 struct ath5k_hw *ah = hw->priv;

 ath5k_deinit_ah(ah);
 pci_iounmap(pdev, ah->iobase);
 pci_release_region(pdev, 0);
 pci_disable_device(pdev);
 ieee80211_free_hw(hw);
}
