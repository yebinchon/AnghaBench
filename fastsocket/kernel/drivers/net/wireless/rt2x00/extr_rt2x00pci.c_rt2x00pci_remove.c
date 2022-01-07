
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ieee80211_hw* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int rt2x00lib_remove_dev (struct rt2x00_dev*) ;
 int rt2x00pci_free_reg (struct rt2x00_dev*) ;

void rt2x00pci_remove(struct pci_dev *pci_dev)
{
 struct ieee80211_hw *hw = pci_get_drvdata(pci_dev);
 struct rt2x00_dev *rt2x00dev = hw->priv;




 rt2x00lib_remove_dev(rt2x00dev);
 rt2x00pci_free_reg(rt2x00dev);
 ieee80211_free_hw(hw);




 pci_set_drvdata(pci_dev, ((void*)0));
 pci_disable_device(pci_dev);
 pci_release_regions(pci_dev);
}
