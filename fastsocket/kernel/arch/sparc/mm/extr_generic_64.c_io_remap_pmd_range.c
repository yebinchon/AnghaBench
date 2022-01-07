
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int ENOMEM ;
 unsigned long PGDIR_MASK ;
 unsigned long PGDIR_SIZE ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 int io_remap_pte_range (struct mm_struct*,int *,unsigned long,unsigned long,unsigned long,int ,int) ;
 int * pte_alloc_map (struct mm_struct*,int *,unsigned long) ;
 int pte_unmap (int *) ;

__attribute__((used)) static inline int io_remap_pmd_range(struct mm_struct *mm, pmd_t * pmd, unsigned long address, unsigned long size,
 unsigned long offset, pgprot_t prot, int space)
{
 unsigned long end;

 address &= ~PGDIR_MASK;
 end = address + size;
 if (end > PGDIR_SIZE)
  end = PGDIR_SIZE;
 offset -= address;
 do {
  pte_t * pte = pte_alloc_map(mm, pmd, address);
  if (!pte)
   return -ENOMEM;
  io_remap_pte_range(mm, pte, address, end - address, address + offset, prot, space);
  pte_unmap(pte);
  address = (address + PMD_SIZE) & PMD_MASK;
  pmd++;
 } while (address < end);
 return 0;
}
