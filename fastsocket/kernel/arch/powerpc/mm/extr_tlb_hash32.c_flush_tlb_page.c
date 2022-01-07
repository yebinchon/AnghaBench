
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct TYPE_2__ {int id; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pmd_t ;


 int FINISH_FLUSH ;
 scalar_t__ Hash ;
 unsigned long TASK_SIZE ;
 int _tlbie (unsigned long) ;
 int flush_hash_pages (int ,unsigned long,int ,int) ;
 struct mm_struct init_mm ;
 int pgd_offset (struct mm_struct*,unsigned long) ;
 int pmd_none (int ) ;
 int * pmd_offset (int ,unsigned long) ;
 int pmd_val (int ) ;
 int pud_offset (int ,unsigned long) ;

void flush_tlb_page(struct vm_area_struct *vma, unsigned long vmaddr)
{
 struct mm_struct *mm;
 pmd_t *pmd;

 if (Hash == 0) {
  _tlbie(vmaddr);
  return;
 }
 mm = (vmaddr < TASK_SIZE)? vma->vm_mm: &init_mm;
 pmd = pmd_offset(pud_offset(pgd_offset(mm, vmaddr), vmaddr), vmaddr);
 if (!pmd_none(*pmd))
  flush_hash_pages(mm->context.id, vmaddr, pmd_val(*pmd), 1);
 FINISH_FLUSH;
}
