
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_domain_info {int dev; } ;


 int pci_ats_enabled (int ) ;
 int pci_disable_ats (int ) ;

__attribute__((used)) static void iommu_disable_dev_iotlb(struct device_domain_info *info)
{
 if (!info->dev || !pci_ats_enabled(info->dev))
  return;

 pci_disable_ats(info->dev);
}
