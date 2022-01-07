
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pgprot_t ;


 scalar_t__ PAGE_SIZE ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 int mk_pte_io (unsigned long,int ,int) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;

__attribute__((used)) static inline void io_remap_pte_range(struct mm_struct *mm, pte_t * pte, unsigned long address, unsigned long size,
 unsigned long offset, pgprot_t prot, int space)
{
 unsigned long end;

 address &= ~PMD_MASK;
 end = address + size;
 if (end > PMD_SIZE)
  end = PMD_SIZE;
 do {
  set_pte_at(mm, address, pte, mk_pte_io(offset, prot, space));
  address += PAGE_SIZE;
  offset += PAGE_SIZE;
  pte++;
 } while (address < end);
}
