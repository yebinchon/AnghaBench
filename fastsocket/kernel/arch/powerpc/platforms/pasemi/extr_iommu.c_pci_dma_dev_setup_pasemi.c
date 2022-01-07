
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dma_ops; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct pci_dev {int vendor; int device; TYPE_2__ dev; } ;


 int FW_FEATURE_LPAR ;
 int dma_direct_ops ;
 int firmware_has_feature (int ) ;
 int iommu_table_iobmap ;
 int pci_name (struct pci_dev*) ;
 int pr_debug (char*,struct pci_dev*,int ) ;
 int set_iommu_table_base (TYPE_2__*,int *) ;

__attribute__((used)) static void pci_dma_dev_setup_pasemi(struct pci_dev *dev)
{
 pr_debug("pci_dma_dev_setup, dev %p (%s)\n", dev, pci_name(dev));






 if (dev->vendor == 0x1959 && dev->device == 0xa007 &&
     !firmware_has_feature(FW_FEATURE_LPAR)) {
  dev->dev.archdata.dma_ops = &dma_direct_ops;
  return;
 }


 set_iommu_table_base(&dev->dev, &iommu_table_iobmap);
}
