
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nouveau_vma {int access; } ;


 int NV_MEM_ACCESS_SYS ;
 int NV_MEM_ACCESS_WO ;

__attribute__((used)) static inline u64
vm_addr(struct nouveau_vma *vma, u64 phys, u32 memtype, u32 target)
{
 phys |= 1;
 phys |= (u64)memtype << 40;
 phys |= target << 4;
 if (vma->access & NV_MEM_ACCESS_SYS)
  phys |= (1 << 6);
 if (!(vma->access & NV_MEM_ACCESS_WO))
  phys |= (1 << 3);
 return phys;
}
