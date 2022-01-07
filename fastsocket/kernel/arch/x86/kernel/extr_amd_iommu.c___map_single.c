
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int id; } ;
struct dma_ops_domain {int need_flush; TYPE_1__ domain; int aperture_size; int next_address; } ;
struct device {int dummy; } ;
struct amd_iommu {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 int ADD_STATS_COUNTER (int ,size_t) ;
 int GFP_ATOMIC ;
 int INC_STATS_COUNTER (int ) ;
 scalar_t__ PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ alloc_new_range (struct amd_iommu*,struct dma_ops_domain*,int,int ) ;
 int alloced_io_mem ;
 int amd_iommu_unmap_flush ;
 scalar_t__ bad_dma_address ;
 int cross_page ;
 scalar_t__ dma_ops_alloc_addresses (struct device*,struct dma_ops_domain*,unsigned int,unsigned long,int ) ;
 scalar_t__ dma_ops_domain_map (struct amd_iommu*,struct dma_ops_domain*,scalar_t__,scalar_t__,int) ;
 int dma_ops_domain_unmap (struct amd_iommu*,struct dma_ops_domain*,scalar_t__) ;
 int dma_ops_free_addresses (struct dma_ops_domain*,scalar_t__,unsigned int) ;
 unsigned long get_order (size_t) ;
 int iommu_flush_pages (struct amd_iommu*,int ,scalar_t__,size_t) ;
 int iommu_flush_tlb (struct amd_iommu*,int ) ;
 int iommu_has_npcache (struct amd_iommu*) ;
 unsigned int iommu_num_pages (scalar_t__,size_t,scalar_t__) ;
 int total_map_requests ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static dma_addr_t __map_single(struct device *dev,
          struct amd_iommu *iommu,
          struct dma_ops_domain *dma_dom,
          phys_addr_t paddr,
          size_t size,
          int dir,
          bool align,
          u64 dma_mask)
{
 dma_addr_t offset = paddr & ~PAGE_MASK;
 dma_addr_t address, start, ret;
 unsigned int pages;
 unsigned long align_mask = 0;
 int i;

 pages = iommu_num_pages(paddr, size, PAGE_SIZE);
 paddr &= PAGE_MASK;

 INC_STATS_COUNTER(total_map_requests);

 if (pages > 1)
  INC_STATS_COUNTER(cross_page);

 if (align)
  align_mask = (1UL << get_order(size)) - 1;

retry:
 address = dma_ops_alloc_addresses(dev, dma_dom, pages, align_mask,
       dma_mask);
 if (unlikely(address == bad_dma_address)) {





  dma_dom->next_address = dma_dom->aperture_size;

  if (alloc_new_range(iommu, dma_dom, 0, GFP_ATOMIC))
   goto out;





  goto retry;
 }

 start = address;
 for (i = 0; i < pages; ++i) {
  ret = dma_ops_domain_map(iommu, dma_dom, start, paddr, dir);
  if (ret == bad_dma_address)
   goto out_unmap;

  paddr += PAGE_SIZE;
  start += PAGE_SIZE;
 }
 address += offset;

 ADD_STATS_COUNTER(alloced_io_mem, size);

 if (unlikely(dma_dom->need_flush && !amd_iommu_unmap_flush)) {
  iommu_flush_tlb(iommu, dma_dom->domain.id);
  dma_dom->need_flush = 0;
 } else if (unlikely(iommu_has_npcache(iommu)))
  iommu_flush_pages(iommu, dma_dom->domain.id, address, size);

out:
 return address;

out_unmap:

 for (--i; i >= 0; --i) {
  start -= PAGE_SIZE;
  dma_ops_domain_unmap(iommu, dma_dom, start);
 }

 dma_ops_free_addresses(dma_dom, address, pages);

 return bad_dma_address;
}
