
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct pci_dev {int irq; struct device dev; } ;
struct msix_entry {int entry; int vector; } ;
struct TYPE_2__ {int chancnt; } ;
struct ioatdma_device {scalar_t__ reg_base; int (* intr_quirk ) (struct ioatdma_device*) ;struct msix_entry* msix_entries; TYPE_1__ common; struct pci_dev* pdev; } ;
struct ioat_chan_common {scalar_t__ reg_base; int (* intr_quirk ) (struct ioatdma_device*) ;struct msix_entry* msix_entries; TYPE_1__ common; struct pci_dev* pdev; } ;


 int EINVAL ;
 int IOAT_INTRCTRL_MASTER_INT_EN ;
 int IOAT_INTRCTRL_MSIX_VECTOR_CONTROL ;
 scalar_t__ IOAT_INTRCTRL_OFFSET ;
 int IRQF_SHARED ;
 int dev_err (struct device*,char*,...) ;
 int devm_free_irq (struct device*,int ,struct ioatdma_device*) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct ioatdma_device*) ;
 struct ioatdma_device* ioat_chan_by_index (struct ioatdma_device*,int) ;
 int ioat_dma_do_interrupt ;
 int ioat_dma_do_interrupt_msix ;
 int ioat_interrupt_style ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_disable_msix (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_enable_msix (struct pci_dev*,struct msix_entry*,int) ;
 int strcmp (int ,char*) ;
 int stub1 (struct ioatdma_device*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int ioat_dma_setup_interrupts(struct ioatdma_device *device)
{
 struct ioat_chan_common *chan;
 struct pci_dev *pdev = device->pdev;
 struct device *dev = &pdev->dev;
 struct msix_entry *msix;
 int i, j, msixcnt;
 int err = -EINVAL;
 u8 intrctrl = 0;

 if (!strcmp(ioat_interrupt_style, "msix"))
  goto msix;
 if (!strcmp(ioat_interrupt_style, "msix-single-vector"))
  goto msix_single_vector;
 if (!strcmp(ioat_interrupt_style, "msi"))
  goto msi;
 if (!strcmp(ioat_interrupt_style, "intx"))
  goto intx;
 dev_err(dev, "invalid ioat_interrupt_style %s\n", ioat_interrupt_style);
 goto err_no_irq;

msix:

 msixcnt = device->common.chancnt;
 for (i = 0; i < msixcnt; i++)
  device->msix_entries[i].entry = i;

 err = pci_enable_msix(pdev, device->msix_entries, msixcnt);
 if (err < 0)
  goto msi;
 if (err > 0)
  goto msix_single_vector;

 for (i = 0; i < msixcnt; i++) {
  msix = &device->msix_entries[i];
  chan = ioat_chan_by_index(device, i);
  err = devm_request_irq(dev, msix->vector,
           ioat_dma_do_interrupt_msix, 0,
           "ioat-msix", chan);
  if (err) {
   for (j = 0; j < i; j++) {
    msix = &device->msix_entries[j];
    chan = ioat_chan_by_index(device, j);
    devm_free_irq(dev, msix->vector, chan);
   }
   goto msix_single_vector;
  }
 }
 intrctrl |= IOAT_INTRCTRL_MSIX_VECTOR_CONTROL;
 goto done;

msix_single_vector:
 msix = &device->msix_entries[0];
 msix->entry = 0;
 err = pci_enable_msix(pdev, device->msix_entries, 1);
 if (err)
  goto msi;

 err = devm_request_irq(dev, msix->vector, ioat_dma_do_interrupt, 0,
          "ioat-msix", device);
 if (err) {
  pci_disable_msix(pdev);
  goto msi;
 }
 goto done;

msi:
 err = pci_enable_msi(pdev);
 if (err)
  goto intx;

 err = devm_request_irq(dev, pdev->irq, ioat_dma_do_interrupt, 0,
          "ioat-msi", device);
 if (err) {
  pci_disable_msi(pdev);
  goto intx;
 }
 goto done;

intx:
 err = devm_request_irq(dev, pdev->irq, ioat_dma_do_interrupt,
          IRQF_SHARED, "ioat-intx", device);
 if (err)
  goto err_no_irq;

done:
 if (device->intr_quirk)
  device->intr_quirk(device);
 intrctrl |= IOAT_INTRCTRL_MASTER_INT_EN;
 writeb(intrctrl, device->reg_base + IOAT_INTRCTRL_OFFSET);
 return 0;

err_no_irq:

 writeb(0, device->reg_base + IOAT_INTRCTRL_OFFSET);
 dev_err(dev, "no usable interrupts\n");
 return err;
}
