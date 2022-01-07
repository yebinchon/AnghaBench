
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct protection_domain {int lock; int priv; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
struct amd_iommu {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int INC_STATS_COUNTER (int ) ;
 int __unmap_single (struct amd_iommu*,int ,int ,size_t,int) ;
 int check_device (struct device*) ;
 int cnt_unmap_single ;
 int dma_ops_domain (struct protection_domain*) ;
 int get_device_resources (struct device*,struct amd_iommu**,struct protection_domain**,int *) ;
 int iommu_completion_wait (struct amd_iommu*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void unmap_page(struct device *dev, dma_addr_t dma_addr, size_t size,
         enum dma_data_direction dir, struct dma_attrs *attrs)
{
 unsigned long flags;
 struct amd_iommu *iommu;
 struct protection_domain *domain;
 u16 devid;

 INC_STATS_COUNTER(cnt_unmap_single);

 if (!check_device(dev) ||
     !get_device_resources(dev, &iommu, &domain, &devid))

  return;

 if (!dma_ops_domain(domain))
  return;

 spin_lock_irqsave(&domain->lock, flags);

 __unmap_single(iommu, domain->priv, dma_addr, size, dir);

 iommu_completion_wait(iommu);

 spin_unlock_irqrestore(&domain->lock, flags);
}
