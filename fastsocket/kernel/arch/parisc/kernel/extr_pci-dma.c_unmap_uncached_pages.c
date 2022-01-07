
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 unsigned long PGDIR_SIZE ;
 int * pgd_offset_k (unsigned long) ;
 int unmap_uncached_pmd (int *,unsigned long,unsigned long) ;

__attribute__((used)) static void unmap_uncached_pages(unsigned long vaddr, unsigned long size)
{
 pgd_t * dir;
 unsigned long end = vaddr + size;

 dir = pgd_offset_k(vaddr);
 do {
  unmap_uncached_pmd(dir, vaddr, end - vaddr);
  vaddr = vaddr + PGDIR_SIZE;
  dir++;
 } while (vaddr && (vaddr < end));
}
