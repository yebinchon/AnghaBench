
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct protection_domain {int lock; int priv; } ;
struct device {int dummy; } ;
struct amd_iommu {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int INC_STATS_COUNTER (int ) ;
 int __unmap_single (struct amd_iommu*,int ,int ,size_t,int ) ;
 int check_device (struct device*) ;
 int cnt_free_coherent ;
 int dma_ops_domain (struct protection_domain*) ;
 int free_pages (unsigned long,int ) ;
 int get_device_resources (struct device*,struct amd_iommu**,struct protection_domain**,int *) ;
 int get_order (size_t) ;
 int iommu_completion_wait (struct amd_iommu*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_coherent(struct device *dev, size_t size,
     void *virt_addr, dma_addr_t dma_addr)
{
 unsigned long flags;
 struct amd_iommu *iommu;
 struct protection_domain *domain;
 u16 devid;

 INC_STATS_COUNTER(cnt_free_coherent);

 if (!check_device(dev))
  return;

 get_device_resources(dev, &iommu, &domain, &devid);

 if (!iommu || !domain)
  goto free_mem;

 if (!dma_ops_domain(domain))
  goto free_mem;

 spin_lock_irqsave(&domain->lock, flags);

 __unmap_single(iommu, domain->priv, dma_addr, size, DMA_BIDIRECTIONAL);

 iommu_completion_wait(iommu);

 spin_unlock_irqrestore(&domain->lock, flags);

free_mem:
 free_pages((unsigned long)virt_addr, get_order(size));
}
