
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int devfn; struct device dev; } ;
struct ahd_softc {int features; struct pci_dev* dev_softc; int flags; } ;
struct ahd_pci_identity {int dummy; } ;
typedef int dma_addr_t ;
typedef struct pci_dev* ahd_dev_softc_t ;


 int AHD_39BIT_ADDRESSING ;
 int AHD_64BIT_ADDRESSING ;
 int AHD_MULTI_FUNC ;
 scalar_t__ const DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 scalar_t__ PCI_FUNC (int ) ;
 struct ahd_softc* ahd_alloc (int *,char*) ;
 struct ahd_pci_identity* ahd_find_pci_device (struct pci_dev*) ;
 int ahd_free (struct ahd_softc*) ;
 int ahd_get_pci_bus (struct pci_dev*) ;
 int ahd_get_pci_function (struct pci_dev*) ;
 int ahd_get_pci_slot (struct pci_dev*) ;
 int ahd_linux_pci_inherit_flags (struct ahd_softc*) ;
 int ahd_linux_register_host (struct ahd_softc*,int *) ;
 int ahd_pci_config (struct ahd_softc*,struct ahd_pci_identity const*) ;
 int aic79xx_driver_template ;
 scalar_t__ dma_get_required_mask (struct device*) ;
 scalar_t__ dma_set_mask (struct device*,scalar_t__ const) ;
 char* malloc (scalar_t__,int ,int ) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct ahd_softc*) ;
 int pci_set_master (struct pci_dev*) ;
 int sprintf (char*,char*,int,int,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
ahd_linux_pci_dev_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 char buf[80];
 struct ahd_softc *ahd;
 ahd_dev_softc_t pci;
 const struct ahd_pci_identity *entry;
 char *name;
 int error;
 struct device *dev = &pdev->dev;

 pci = pdev;
 entry = ahd_find_pci_device(pci);
 if (entry == ((void*)0))
  return (-ENODEV);






 sprintf(buf, "ahd_pci:%d:%d:%d",
  ahd_get_pci_bus(pci),
  ahd_get_pci_slot(pci),
  ahd_get_pci_function(pci));
 name = malloc(strlen(buf) + 1, M_DEVBUF, M_NOWAIT);
 if (name == ((void*)0))
  return (-ENOMEM);
 strcpy(name, buf);
 ahd = ahd_alloc(((void*)0), name);
 if (ahd == ((void*)0))
  return (-ENOMEM);
 if (pci_enable_device(pdev)) {
  ahd_free(ahd);
  return (-ENODEV);
 }
 pci_set_master(pdev);

 if (sizeof(dma_addr_t) > 4) {
  const u64 required_mask = dma_get_required_mask(dev);

  if (required_mask > DMA_BIT_MASK(39) &&
      dma_set_mask(dev, DMA_BIT_MASK(64)) == 0)
   ahd->flags |= AHD_64BIT_ADDRESSING;
  else if (required_mask > DMA_BIT_MASK(32) &&
    dma_set_mask(dev, DMA_BIT_MASK(39)) == 0)
   ahd->flags |= AHD_39BIT_ADDRESSING;
  else
   dma_set_mask(dev, DMA_BIT_MASK(32));
 } else {
  dma_set_mask(dev, DMA_BIT_MASK(32));
 }
 ahd->dev_softc = pci;
 error = ahd_pci_config(ahd, entry);
 if (error != 0) {
  ahd_free(ahd);
  return (-error);
 }





 if ((ahd->features & AHD_MULTI_FUNC) && PCI_FUNC(pdev->devfn) != 0)
  ahd_linux_pci_inherit_flags(ahd);

 pci_set_drvdata(pdev, ahd);

 ahd_linux_register_host(ahd, &aic79xx_driver_template);
 return (0);
}
