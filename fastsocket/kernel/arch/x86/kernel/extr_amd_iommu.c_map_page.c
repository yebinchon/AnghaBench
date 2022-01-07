
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct protection_domain {int lock; int priv; } ;
struct page {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int * dma_mask; } ;
struct amd_iommu {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 int INC_STATS_COUNTER (int ) ;
 scalar_t__ __map_single (struct device*,struct amd_iommu*,int ,scalar_t__,size_t,int,int,int ) ;
 scalar_t__ bad_dma_address ;
 int check_device (struct device*) ;
 int cnt_map_single ;
 int dma_ops_domain (struct protection_domain*) ;
 int get_device_resources (struct device*,struct amd_iommu**,struct protection_domain**,int *) ;
 int iommu_completion_wait (struct amd_iommu*) ;
 scalar_t__ page_to_phys (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static dma_addr_t map_page(struct device *dev, struct page *page,
      unsigned long offset, size_t size,
      enum dma_data_direction dir,
      struct dma_attrs *attrs)
{
 unsigned long flags;
 struct amd_iommu *iommu;
 struct protection_domain *domain;
 u16 devid;
 dma_addr_t addr;
 u64 dma_mask;
 phys_addr_t paddr = page_to_phys(page) + offset;

 INC_STATS_COUNTER(cnt_map_single);

 if (!check_device(dev))
  return bad_dma_address;

 dma_mask = *dev->dma_mask;

 get_device_resources(dev, &iommu, &domain, &devid);

 if (iommu == ((void*)0) || domain == ((void*)0))

  return (dma_addr_t)paddr;

 if (!dma_ops_domain(domain))
  return bad_dma_address;

 spin_lock_irqsave(&domain->lock, flags);
 addr = __map_single(dev, iommu, domain->priv, paddr, size, dir, 0,
       dma_mask);
 if (addr == bad_dma_address)
  goto out;

 iommu_completion_wait(iommu);

out:
 spin_unlock_irqrestore(&domain->lock, flags);

 return addr;
}
