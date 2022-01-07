
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iommu; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct dmar_rmrr_unit {scalar_t__ end_address; int base_address; } ;


 scalar_t__ DUMMY_DEVICE_DOMAIN_INFO ;
 int iommu_prepare_identity_map (struct pci_dev*,int ,scalar_t__) ;

__attribute__((used)) static inline int iommu_prepare_rmrr_dev(struct dmar_rmrr_unit *rmrr,
 struct pci_dev *pdev)
{
 if (pdev->dev.archdata.iommu == DUMMY_DEVICE_DOMAIN_INFO)
  return 0;
 return iommu_prepare_identity_map(pdev, rmrr->base_address,
  rmrr->end_address + 1);
}
