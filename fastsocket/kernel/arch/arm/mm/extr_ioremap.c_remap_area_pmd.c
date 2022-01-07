
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_type {int dummy; } ;
typedef int pmd_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int init_mm ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int * pmd_alloc (int *,int *,unsigned long) ;
 int remap_area_pte (int *,unsigned long,unsigned long,unsigned long,struct mem_type const*) ;

__attribute__((used)) static inline int remap_area_pmd(pgd_t *pgd, unsigned long addr,
     unsigned long end, unsigned long phys_addr,
     const struct mem_type *type)
{
 unsigned long next;
 pmd_t *pmd;
 int ret = 0;

 pmd = pmd_alloc(&init_mm, pgd, addr);
 if (!pmd)
  return -ENOMEM;

 do {
  next = pmd_addr_end(addr, end);
  ret = remap_area_pte(pmd, addr, next, phys_addr, type);
  if (ret)
   return ret;
  phys_addr += next - addr;
 } while (pmd++, addr = next, addr != end);
 return ret;
}
