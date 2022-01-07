
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_gpuobj {int dummy; } ;


 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;

__attribute__((used)) static void
nvc0_vm_unmap(struct nouveau_gpuobj *pgt, u32 pte, u32 cnt)
{
 pte <<= 3;
 while (cnt--) {
  nv_wo32(pgt, pte + 0, 0x00000000);
  nv_wo32(pgt, pte + 4, 0x00000000);
  pte += 8;
 }
}
