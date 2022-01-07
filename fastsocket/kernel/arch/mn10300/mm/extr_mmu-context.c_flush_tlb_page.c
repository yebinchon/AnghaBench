
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int DPTEL ;
 unsigned long DPTEU ;
 int IPTEL ;
 unsigned long IPTEU ;
 unsigned long MMU_NO_CONTEXT ;
 unsigned long PAGE_MASK ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long mm_context (int ) ;
 int xPTEL_V ;

void flush_tlb_page(struct vm_area_struct *vma, unsigned long addr)
{
 unsigned long pteu, cnx, flags;

 addr &= PAGE_MASK;



 local_irq_save(flags);

 cnx = mm_context(vma->vm_mm);

 if (cnx != MMU_NO_CONTEXT) {
  pteu = addr | (cnx & 0x000000ffUL);
  IPTEU = pteu;
  DPTEU = pteu;
  if (IPTEL & xPTEL_V)
   IPTEL = 0;
  if (DPTEL & xPTEL_V)
   DPTEL = 0;
 }

 local_irq_restore(flags);
}
