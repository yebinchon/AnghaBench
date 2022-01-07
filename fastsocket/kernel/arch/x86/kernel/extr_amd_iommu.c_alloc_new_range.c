
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct dma_ops_domain {int aperture_size; TYPE_1__** aperture; int domain; } ;
struct aperture_range {int dummy; } ;
struct amd_iommu {unsigned long exclusion_start; int exclusion_length; } ;
typedef int gfp_t ;
struct TYPE_3__ {int offset; void* bitmap; int ** pte_pages; } ;


 int APERTURE_MAX_RANGES ;
 int APERTURE_RANGE_PAGES ;
 int APERTURE_RANGE_SHIFT ;
 int APERTURE_RANGE_SIZE ;
 int ENOMEM ;
 int IOMMU_PTE_PRESENT (int ) ;
 unsigned long MSI_ADDR_BASE_LO ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int PM_MAP_4k ;
 int * alloc_pte (int *,unsigned long,int ,int **,int ) ;
 int dma_ops_reserve_addresses (struct dma_ops_domain*,unsigned long,int) ;
 int * fetch_pte (int *,unsigned long,int ) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int iommu_num_pages (unsigned long,int,scalar_t__) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int update_domain (int *) ;

__attribute__((used)) static int alloc_new_range(struct amd_iommu *iommu,
      struct dma_ops_domain *dma_dom,
      bool populate, gfp_t gfp)
{
 int index = dma_dom->aperture_size >> APERTURE_RANGE_SHIFT;
 unsigned long i, old_size;





 if (index >= APERTURE_MAX_RANGES)
  return -ENOMEM;

 dma_dom->aperture[index] = kzalloc(sizeof(struct aperture_range), gfp);
 if (!dma_dom->aperture[index])
  return -ENOMEM;

 dma_dom->aperture[index]->bitmap = (void *)get_zeroed_page(gfp);
 if (!dma_dom->aperture[index]->bitmap)
  goto out_free;

 dma_dom->aperture[index]->offset = dma_dom->aperture_size;

 if (populate) {
  unsigned long address = dma_dom->aperture_size;
  int i, num_ptes = APERTURE_RANGE_PAGES / 512;
  u64 *pte, *pte_page;

  for (i = 0; i < num_ptes; ++i) {
   pte = alloc_pte(&dma_dom->domain, address, PM_MAP_4k,
     &pte_page, gfp);
   if (!pte)
    goto out_free;

   dma_dom->aperture[index]->pte_pages[i] = pte_page;

   address += APERTURE_RANGE_SIZE / 64;
  }
 }

 old_size = dma_dom->aperture_size;
 dma_dom->aperture_size += APERTURE_RANGE_SIZE;


 if (old_size < MSI_ADDR_BASE_LO &&
     dma_dom->aperture_size > MSI_ADDR_BASE_LO) {
  unsigned long spage;
  int pages;

  pages = iommu_num_pages(MSI_ADDR_BASE_LO, 0x10000, PAGE_SIZE);
  spage = MSI_ADDR_BASE_LO >> PAGE_SHIFT;

  dma_ops_reserve_addresses(dma_dom, spage, pages);
 }


 if (iommu->exclusion_start &&
     iommu->exclusion_start >= dma_dom->aperture[index]->offset &&
     iommu->exclusion_start < dma_dom->aperture_size) {
  unsigned long startpage = iommu->exclusion_start >> PAGE_SHIFT;
  int pages = iommu_num_pages(iommu->exclusion_start,
         iommu->exclusion_length,
         PAGE_SIZE);
  dma_ops_reserve_addresses(dma_dom, startpage, pages);
 }







 for (i = dma_dom->aperture[index]->offset;
      i < dma_dom->aperture_size;
      i += PAGE_SIZE) {
  u64 *pte = fetch_pte(&dma_dom->domain, i, PM_MAP_4k);
  if (!pte || !IOMMU_PTE_PRESENT(*pte))
   continue;

  dma_ops_reserve_addresses(dma_dom, i >> PAGE_SHIFT, 1);
 }

 update_domain(&dma_dom->domain);

 return 0;

out_free:
 update_domain(&dma_dom->domain);

 free_page((unsigned long)dma_dom->aperture[index]->bitmap);

 kfree(dma_dom->aperture[index]);
 dma_dom->aperture[index] = ((void*)0);

 return -ENOMEM;
}
