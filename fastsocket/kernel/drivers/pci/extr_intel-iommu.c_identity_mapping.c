
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_domain_info* iommu; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct device_domain_info {scalar_t__ domain; } ;


 struct device_domain_info* DUMMY_DEVICE_DOMAIN_INFO ;
 int iommu_identity_mapping ;
 scalar_t__ likely (int) ;
 scalar_t__ si_domain ;

__attribute__((used)) static int identity_mapping(struct pci_dev *pdev)
{
 struct device_domain_info *info;

 if (likely(!iommu_identity_mapping))
  return 0;

 info = pdev->dev.archdata.iommu;
 if (info && info != DUMMY_DEVICE_DOMAIN_INFO)
  return (info->domain == si_domain);

 return 0;
}
