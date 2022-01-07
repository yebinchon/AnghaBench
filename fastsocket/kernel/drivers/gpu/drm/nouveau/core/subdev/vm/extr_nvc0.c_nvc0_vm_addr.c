
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct nouveau_vma {int access; } ;


 int NV_MEM_ACCESS_SYS ;

__attribute__((used)) static inline u64
nvc0_vm_addr(struct nouveau_vma *vma, u64 phys, u32 memtype, u32 target)
{
 phys >>= 8;

 phys |= 0x00000001;
 if (vma->access & NV_MEM_ACCESS_SYS)
  phys |= 0x00000002;

 phys |= ((u64)target << 32);
 phys |= ((u64)memtype << 36);

 return phys;
}
