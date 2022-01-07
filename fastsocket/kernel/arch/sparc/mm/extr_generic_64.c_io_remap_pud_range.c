
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int ENOMEM ;
 unsigned long PUD_MASK ;
 unsigned long PUD_SIZE ;
 int io_remap_pmd_range (struct mm_struct*,int *,unsigned long,unsigned long,unsigned long,int ,int) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;

__attribute__((used)) static inline int io_remap_pud_range(struct mm_struct *mm, pud_t * pud, unsigned long address, unsigned long size,
 unsigned long offset, pgprot_t prot, int space)
{
 unsigned long end;

 address &= ~PUD_MASK;
 end = address + size;
 if (end > PUD_SIZE)
  end = PUD_SIZE;
 offset -= address;
 do {
  pmd_t *pmd = pmd_alloc(mm, pud, address);
  if (!pud)
   return -ENOMEM;
  io_remap_pmd_range(mm, pmd, address, end - address, address + offset, prot, space);
  address = (address + PUD_SIZE) & PUD_MASK;
  pud++;
 } while (address < end);
 return 0;
}
