
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sbridge_dev {struct pci_dev** pdev; } ;
struct pci_id_table {struct pci_id_descr* descr; } ;
struct pci_id_descr {scalar_t__ dev; scalar_t__ func; int dev_id; scalar_t__ optional; } ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 int ENODEV ;
 int ENOMEM ;
 int KERN_ERR ;
 int KERN_INFO ;
 scalar_t__ PCI_FUNC (int ) ;
 scalar_t__ PCI_SLOT (int ) ;
 int PCI_VENDOR_ID_INTEL ;
 struct sbridge_dev* alloc_sbridge_dev (int ,struct pci_id_table const*) ;
 int debugf0 (char*,int ,scalar_t__,scalar_t__,int ,int ) ;
 struct sbridge_dev* get_sbridge_dev (int ) ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int sbridge_printk (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sbridge_get_onedevice(struct pci_dev **prev,
     u8 *num_mc,
     const struct pci_id_table *table,
     const unsigned devno)
{
 struct sbridge_dev *sbridge_dev;
 const struct pci_id_descr *dev_descr = &table->descr[devno];

 struct pci_dev *pdev = ((void*)0);
 u8 bus = 0;

 sbridge_printk(KERN_INFO,
  "Seeking for: dev %02x.%d PCI ID %04x:%04x\n",
  dev_descr->dev, dev_descr->func,
  PCI_VENDOR_ID_INTEL, dev_descr->dev_id);

 pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
         dev_descr->dev_id, *prev);

 if (!pdev) {
  if (*prev) {
   *prev = pdev;
   return 0;
  }

  if (dev_descr->optional)
   return 0;

  if (devno == 0)
   return -ENODEV;

  sbridge_printk(KERN_INFO,
   "Device not found: dev %02x.%d PCI ID %04x:%04x\n",
   dev_descr->dev, dev_descr->func,
   PCI_VENDOR_ID_INTEL, dev_descr->dev_id);


  return -ENODEV;
 }
 bus = pdev->bus->number;

 sbridge_dev = get_sbridge_dev(bus);
 if (!sbridge_dev) {
  sbridge_dev = alloc_sbridge_dev(bus, table);
  if (!sbridge_dev) {
   pci_dev_put(pdev);
   return -ENOMEM;
  }
  (*num_mc)++;
 }

 if (sbridge_dev->pdev[devno]) {
  sbridge_printk(KERN_ERR,
   "Duplicated device for "
   "dev %02x:%d.%d PCI ID %04x:%04x\n",
   bus, dev_descr->dev, dev_descr->func,
   PCI_VENDOR_ID_INTEL, dev_descr->dev_id);
  pci_dev_put(pdev);
  return -ENODEV;
 }

 sbridge_dev->pdev[devno] = pdev;


 if (unlikely(PCI_SLOT(pdev->devfn) != dev_descr->dev ||
   PCI_FUNC(pdev->devfn) != dev_descr->func)) {
  sbridge_printk(KERN_ERR,
   "Device PCI ID %04x:%04x "
   "has dev %02x:%d.%d instead of dev %02x:%02x.%d\n",
   PCI_VENDOR_ID_INTEL, dev_descr->dev_id,
   bus, PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn),
   bus, dev_descr->dev, dev_descr->func);
  return -ENODEV;
 }


 if (unlikely(pci_enable_device(pdev) < 0)) {
  sbridge_printk(KERN_ERR,
   "Couldn't enable "
   "dev %02x:%d.%d PCI ID %04x:%04x\n",
   bus, dev_descr->dev, dev_descr->func,
   PCI_VENDOR_ID_INTEL, dev_descr->dev_id);
  return -ENODEV;
 }

 debugf0("Detected dev %02x:%d.%d PCI ID %04x:%04x\n",
  bus, dev_descr->dev,
  dev_descr->func,
  PCI_VENDOR_ID_INTEL, dev_descr->dev_id);






 pci_dev_get(pdev);

 *prev = pdev;

 return 0;
}
