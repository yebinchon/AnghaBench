
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct device_domain_info* iommu; } ;
struct TYPE_5__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; int devfn; TYPE_3__* bus; } ;
struct dmar_domain {int devices; } ;
struct device_domain_info {int global; int link; struct dmar_domain* domain; struct pci_dev* dev; int devfn; int bus; int segment; } ;
struct TYPE_6__ {int number; } ;


 int ENOMEM ;
 struct device_domain_info* alloc_devinfo_mem () ;
 int device_domain_list ;
 int device_domain_lock ;
 int domain_context_mapping (struct dmar_domain*,struct pci_dev*,int) ;
 int free_devinfo_mem (struct device_domain_info*) ;
 int list_add (int *,int *) ;
 int pci_domain_nr (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlink_domain_info (struct device_domain_info*) ;

__attribute__((used)) static int domain_add_dev_info(struct dmar_domain *domain,
          struct pci_dev *pdev,
          int translation)
{
 struct device_domain_info *info;
 unsigned long flags;
 int ret;

 info = alloc_devinfo_mem();
 if (!info)
  return -ENOMEM;

 info->segment = pci_domain_nr(pdev->bus);
 info->bus = pdev->bus->number;
 info->devfn = pdev->devfn;
 info->dev = pdev;
 info->domain = domain;

 spin_lock_irqsave(&device_domain_lock, flags);
 list_add(&info->link, &domain->devices);
 list_add(&info->global, &device_domain_list);
 pdev->dev.archdata.iommu = info;
 spin_unlock_irqrestore(&device_domain_lock, flags);

 ret = domain_context_mapping(domain, pdev, translation);
 if (ret) {
  spin_lock_irqsave(&device_domain_lock, flags);
  unlink_domain_info(info);
  spin_unlock_irqrestore(&device_domain_lock, flags);
  free_devinfo_mem(info);
  return ret;
 }

 return 0;
}
