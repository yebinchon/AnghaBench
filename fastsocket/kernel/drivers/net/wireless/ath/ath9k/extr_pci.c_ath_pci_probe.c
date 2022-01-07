
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_device_id {int device; } ;
struct pci_dev {int irq; int dev; } ;
struct ieee80211_hw {int wiphy; struct ath_softc* priv; } ;
struct ath_softc {int irq; scalar_t__ mem; int sc_ah; int sc_flags; int * dev; struct ieee80211_hw* hw; } ;
typedef int hw_name ;


 int BIT (int ) ;
 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int IRQF_SHARED ;
 int L1_CACHE_BYTES ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_LATENCY_TIMER ;
 int SC_OP_INVALID ;
 int SET_IEEE80211_DEV (struct ieee80211_hw*,int *) ;
 int ath9k_hw_name (int ,char*,int) ;
 int ath9k_init_device (int ,struct ath_softc*,int *) ;
 int ath9k_ops ;
 int ath_isr ;
 int ath_pci_bus_ops ;
 int dev_err (int *,char*) ;
 int free_irq (int ,struct ath_softc*) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct ieee80211_hw*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 scalar_t__ pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int ,char*) ;
 scalar_t__* pcim_iomap_table (struct pci_dev*) ;
 int pr_err (char*) ;
 int request_irq (int ,int ,int ,char*,struct ath_softc*) ;
 int set_bit (int ,int *) ;
 int wiphy_info (int ,char*,char*,unsigned long,int ) ;

__attribute__((used)) static int ath_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct ath_softc *sc;
 struct ieee80211_hw *hw;
 u8 csz;
 u32 val;
 int ret = 0;
 char hw_name[64];

 if (pcim_enable_device(pdev))
  return -EIO;

 ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
 if (ret) {
  pr_err("32-bit DMA not available\n");
  return ret;
 }

 ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
 if (ret) {
  pr_err("32-bit DMA consistent DMA enable failed\n");
  return ret;
 }





 pci_read_config_byte(pdev, PCI_CACHE_LINE_SIZE, &csz);
 if (csz == 0) {







  csz = L1_CACHE_BYTES / sizeof(u32);
  pci_write_config_byte(pdev, PCI_CACHE_LINE_SIZE, csz);
 }





 pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0xa8);

 pci_set_master(pdev);





 pci_read_config_dword(pdev, 0x40, &val);
 if ((val & 0x0000ff00) != 0)
  pci_write_config_dword(pdev, 0x40, val & 0xffff00ff);

 ret = pcim_iomap_regions(pdev, BIT(0), "ath9k");
 if (ret) {
  dev_err(&pdev->dev, "PCI memory region reserve error\n");
  return -ENODEV;
 }

 hw = ieee80211_alloc_hw(sizeof(struct ath_softc), &ath9k_ops);
 if (!hw) {
  dev_err(&pdev->dev, "No memory for ieee80211_hw\n");
  return -ENOMEM;
 }

 SET_IEEE80211_DEV(hw, &pdev->dev);
 pci_set_drvdata(pdev, hw);

 sc = hw->priv;
 sc->hw = hw;
 sc->dev = &pdev->dev;
 sc->mem = pcim_iomap_table(pdev)[0];


 set_bit(SC_OP_INVALID, &sc->sc_flags);

 ret = request_irq(pdev->irq, ath_isr, IRQF_SHARED, "ath9k", sc);
 if (ret) {
  dev_err(&pdev->dev, "request_irq failed\n");
  goto err_irq;
 }

 sc->irq = pdev->irq;

 ret = ath9k_init_device(id->device, sc, &ath_pci_bus_ops);
 if (ret) {
  dev_err(&pdev->dev, "Failed to initialize device\n");
  goto err_init;
 }

 ath9k_hw_name(sc->sc_ah, hw_name, sizeof(hw_name));
 wiphy_info(hw->wiphy, "%s mem=0x%lx, irq=%d\n",
     hw_name, (unsigned long)sc->mem, pdev->irq);

 return 0;

err_init:
 free_irq(sc->irq, sc);
err_irq:
 ieee80211_free_hw(hw);
 return ret;
}
