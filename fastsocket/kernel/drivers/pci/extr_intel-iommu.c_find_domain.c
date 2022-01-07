
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_domain_info* iommu; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct dmar_domain {int dummy; } ;
struct device_domain_info {struct dmar_domain* domain; } ;



__attribute__((used)) static struct dmar_domain *
find_domain(struct pci_dev *pdev)
{
 struct device_domain_info *info;


 info = pdev->dev.archdata.iommu;
 if (info)
  return info->domain;
 return ((void*)0);
}
