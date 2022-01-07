
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct unity_map_entry {int address_start; int address_end; int prot; } ;
struct dma_ops_domain {int aperture_size; TYPE_1__** aperture; int domain; } ;
struct TYPE_2__ {int bitmap; } ;


 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int PM_MAP_4k ;
 int __set_bit (int,int ) ;
 int iommu_map_page (int *,int,int,int ,int ) ;

__attribute__((used)) static int dma_ops_unity_map(struct dma_ops_domain *dma_dom,
        struct unity_map_entry *e)
{
 u64 addr;
 int ret;

 for (addr = e->address_start; addr < e->address_end;
      addr += PAGE_SIZE) {
  ret = iommu_map_page(&dma_dom->domain, addr, addr, e->prot,
         PM_MAP_4k);
  if (ret)
   return ret;




  if (addr < dma_dom->aperture_size)
   __set_bit(addr >> PAGE_SHIFT,
      dma_dom->aperture[0]->bitmap);
 }

 return 0;
}
