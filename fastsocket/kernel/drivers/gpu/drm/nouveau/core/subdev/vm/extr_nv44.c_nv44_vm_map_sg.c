
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv04_vmmgr_priv {int null; } ;
struct nouveau_vma {TYPE_1__* vm; } ;
struct nouveau_mem {int dummy; } ;
struct nouveau_gpuobj {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {scalar_t__ vmm; } ;


 int nv44_vm_fill (struct nouveau_gpuobj*,int ,int *,int,int) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;

__attribute__((used)) static void
nv44_vm_map_sg(struct nouveau_vma *vma, struct nouveau_gpuobj *pgt,
        struct nouveau_mem *mem, u32 pte, u32 cnt, dma_addr_t *list)
{
 struct nv04_vmmgr_priv *priv = (void *)vma->vm->vmm;
 u32 tmp[4];
 int i;

 if (pte & 3) {
  u32 max = 4 - (pte & 3);
  u32 part = (cnt > max) ? max : cnt;
  nv44_vm_fill(pgt, priv->null, list, pte, part);
  pte += part;
  list += part;
  cnt -= part;
 }

 while (cnt >= 4) {
  for (i = 0; i < 4; i++)
   tmp[i] = *list++ >> 12;
  nv_wo32(pgt, pte++ * 4, tmp[0] >> 0 | tmp[1] << 27);
  nv_wo32(pgt, pte++ * 4, tmp[1] >> 5 | tmp[2] << 22);
  nv_wo32(pgt, pte++ * 4, tmp[2] >> 10 | tmp[3] << 17);
  nv_wo32(pgt, pte++ * 4, tmp[3] >> 15 | 0x40000000);
  cnt -= 4;
 }

 if (cnt)
  nv44_vm_fill(pgt, priv->null, list, pte, cnt);
}
