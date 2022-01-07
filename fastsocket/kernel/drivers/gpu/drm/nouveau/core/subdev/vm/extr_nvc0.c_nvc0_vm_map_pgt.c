
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_gpuobj {int addr; } ;


 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;

__attribute__((used)) static void
nvc0_vm_map_pgt(struct nouveau_gpuobj *pgd, u32 index,
  struct nouveau_gpuobj *pgt[2])
{
 u32 pde[2] = { 0, 0 };

 if (pgt[0])
  pde[1] = 0x00000001 | (pgt[0]->addr >> 8);
 if (pgt[1])
  pde[0] = 0x00000001 | (pgt[1]->addr >> 8);

 nv_wo32(pgd, (index * 8) + 0, pde[0]);
 nv_wo32(pgd, (index * 8) + 4, pde[1]);
}
