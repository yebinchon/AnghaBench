
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nouveau_vma {TYPE_1__* node; } ;
struct nouveau_mem {int memtype; } ;
struct nouveau_gpuobj {int dummy; } ;
struct TYPE_2__ {int type; } ;


 int lower_32_bits (int ) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int ) ;
 int nvc0_vm_addr (struct nouveau_vma*,int ,int ,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void
nvc0_vm_map(struct nouveau_vma *vma, struct nouveau_gpuobj *pgt,
     struct nouveau_mem *mem, u32 pte, u32 cnt, u64 phys, u64 delta)
{
 u32 next = 1 << (vma->node->type - 8);

 phys = nvc0_vm_addr(vma, phys, mem->memtype, 0);
 pte <<= 3;
 while (cnt--) {
  nv_wo32(pgt, pte + 0, lower_32_bits(phys));
  nv_wo32(pgt, pte + 4, upper_32_bits(phys));
  phys += next;
  pte += 8;
 }
}
