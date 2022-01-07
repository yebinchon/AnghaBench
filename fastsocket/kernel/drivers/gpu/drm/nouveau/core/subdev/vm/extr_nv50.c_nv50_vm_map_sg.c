
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nouveau_vma {int access; } ;
struct nouveau_mem {int memtype; } ;
struct nouveau_gpuobj {int dummy; } ;
typedef int dma_addr_t ;


 int NV_MEM_ACCESS_NOSNOOP ;
 int lower_32_bits (int ) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int ) ;
 int upper_32_bits (int ) ;
 int vm_addr (struct nouveau_vma*,int ,int ,int) ;

__attribute__((used)) static void
nv50_vm_map_sg(struct nouveau_vma *vma, struct nouveau_gpuobj *pgt,
        struct nouveau_mem *mem, u32 pte, u32 cnt, dma_addr_t *list)
{
 u32 target = (vma->access & NV_MEM_ACCESS_NOSNOOP) ? 3 : 2;
 pte <<= 3;
 while (cnt--) {
  u64 phys = vm_addr(vma, (u64)*list++, mem->memtype, target);
  nv_wo32(pgt, pte + 0, lower_32_bits(phys));
  nv_wo32(pgt, pte + 4, upper_32_bits(phys));
  pte += 8;
 }
}
