
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;


 int DPTEL ;
 unsigned long DPTEU ;
 int IPTEL ;
 unsigned long IPTEU ;
 unsigned long MMU_NO_CONTEXT ;
 unsigned long PAGE_MASK ;
 unsigned long _PAGE_NX ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long mm_context (int ) ;
 unsigned long pte_val (int ) ;
 unsigned long xPTEL_UNUSED1 ;
 unsigned long xPTEL_UNUSED2 ;
 int xPTEL_V ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long addr, pte_t pte)
{
 unsigned long pteu, ptel, cnx, flags;

 addr &= PAGE_MASK;
 ptel = pte_val(pte) & ~(xPTEL_UNUSED1 | xPTEL_UNUSED2);



 local_irq_save(flags);

 cnx = mm_context(vma->vm_mm);

 if (cnx != MMU_NO_CONTEXT) {
  pteu = addr | (cnx & 0x000000ffUL);
  if (!(pte_val(pte) & _PAGE_NX)) {
   IPTEU = pteu;
   if (IPTEL & xPTEL_V)
    IPTEL = ptel;
  }
  DPTEU = pteu;
  if (DPTEL & xPTEL_V)
   DPTEL = ptel;
 }

 local_irq_restore(flags);
}
