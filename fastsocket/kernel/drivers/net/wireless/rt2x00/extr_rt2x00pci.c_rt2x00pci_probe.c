
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rt2x00_ops {int hw; } ;
struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {TYPE_1__ chip; int name; int irq; struct ieee80211_hw* hw; struct rt2x00_ops const* ops; int * dev; } ;
struct pci_dev {int irq; int dev; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENOMEM ;
 int PCI_DEVICE_ID ;
 int RT2X00_CHIP_INTF_PCI ;
 int RT2X00_CHIP_INTF_PCIE ;
 scalar_t__ dma_set_mask (int *,int ) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int ) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct ieee80211_hw*) ;
 int pci_set_master (struct pci_dev*) ;
 scalar_t__ pci_set_mwi (struct pci_dev*) ;
 int rt2x00_probe_err (char*) ;
 int rt2x00_set_chip_intf (struct rt2x00_dev*,int ) ;
 int rt2x00lib_probe_dev (struct rt2x00_dev*) ;
 int rt2x00pci_alloc_reg (struct rt2x00_dev*) ;
 int rt2x00pci_free_reg (struct rt2x00_dev*) ;

int rt2x00pci_probe(struct pci_dev *pci_dev, const struct rt2x00_ops *ops)
{
 struct ieee80211_hw *hw;
 struct rt2x00_dev *rt2x00dev;
 int retval;
 u16 chip;

 retval = pci_enable_device(pci_dev);
 if (retval) {
  rt2x00_probe_err("Enable device failed\n");
  return retval;
 }

 retval = pci_request_regions(pci_dev, pci_name(pci_dev));
 if (retval) {
  rt2x00_probe_err("PCI request regions failed\n");
  goto exit_disable_device;
 }

 pci_set_master(pci_dev);

 if (pci_set_mwi(pci_dev))
  rt2x00_probe_err("MWI not available\n");

 if (dma_set_mask(&pci_dev->dev, DMA_BIT_MASK(32))) {
  rt2x00_probe_err("PCI DMA not supported\n");
  retval = -EIO;
  goto exit_release_regions;
 }

 hw = ieee80211_alloc_hw(sizeof(struct rt2x00_dev), ops->hw);
 if (!hw) {
  rt2x00_probe_err("Failed to allocate hardware\n");
  retval = -ENOMEM;
  goto exit_release_regions;
 }

 pci_set_drvdata(pci_dev, hw);

 rt2x00dev = hw->priv;
 rt2x00dev->dev = &pci_dev->dev;
 rt2x00dev->ops = ops;
 rt2x00dev->hw = hw;
 rt2x00dev->irq = pci_dev->irq;
 rt2x00dev->name = pci_name(pci_dev);

 if (pci_is_pcie(pci_dev))
  rt2x00_set_chip_intf(rt2x00dev, RT2X00_CHIP_INTF_PCIE);
 else
  rt2x00_set_chip_intf(rt2x00dev, RT2X00_CHIP_INTF_PCI);

 retval = rt2x00pci_alloc_reg(rt2x00dev);
 if (retval)
  goto exit_free_device;






 pci_read_config_word(pci_dev, PCI_DEVICE_ID, &chip);
 rt2x00dev->chip.rt = chip;

 retval = rt2x00lib_probe_dev(rt2x00dev);
 if (retval)
  goto exit_free_reg;

 return 0;

exit_free_reg:
 rt2x00pci_free_reg(rt2x00dev);

exit_free_device:
 ieee80211_free_hw(hw);

exit_release_regions:
 pci_release_regions(pci_dev);

exit_disable_device:
 pci_disable_device(pci_dev);

 pci_set_drvdata(pci_dev, ((void*)0));

 return retval;
}
