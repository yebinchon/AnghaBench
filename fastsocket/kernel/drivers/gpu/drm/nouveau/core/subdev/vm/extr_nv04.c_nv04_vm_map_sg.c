
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_vma {int dummy; } ;
struct nouveau_mem {int dummy; } ;
struct nouveau_gpuobj {int dummy; } ;
typedef int dma_addr_t ;


 int NV04_PDMA_PAGE ;
 int PAGE_SIZE ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;

__attribute__((used)) static void
nv04_vm_map_sg(struct nouveau_vma *vma, struct nouveau_gpuobj *pgt,
        struct nouveau_mem *mem, u32 pte, u32 cnt, dma_addr_t *list)
{
 pte = 0x00008 + (pte * 4);
 while (cnt) {
  u32 page = PAGE_SIZE / NV04_PDMA_PAGE;
  u32 phys = (u32)*list++;
  while (cnt && page--) {
   nv_wo32(pgt, pte, phys | 3);
   phys += NV04_PDMA_PAGE;
   pte += 4;
   cnt -= 1;
  }
 }
}
