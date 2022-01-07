
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_domain_info {int dev; } ;


 int VTD_PAGE_SHIFT ;
 int pci_enable_ats (int ,int ) ;

__attribute__((used)) static void iommu_enable_dev_iotlb(struct device_domain_info *info)
{
 if (!info)
  return;

 pci_enable_ats(info->dev, VTD_PAGE_SHIFT);
}
