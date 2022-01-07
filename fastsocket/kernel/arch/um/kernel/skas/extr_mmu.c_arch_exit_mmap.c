
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * stub_pages; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pte_t ;


 int STUB_CODE ;
 int STUB_DATA ;
 int kfree (int *) ;
 int pte_clear (struct mm_struct*,int ,int *) ;
 int * virt_to_pte (struct mm_struct*,int ) ;

void arch_exit_mmap(struct mm_struct *mm)
{
 pte_t *pte;

 if (mm->context.stub_pages != ((void*)0))
  kfree(mm->context.stub_pages);
 pte = virt_to_pte(mm, STUB_CODE);
 if (pte != ((void*)0))
  pte_clear(mm, STUB_CODE, pte);

 pte = virt_to_pte(mm, STUB_DATA);
 if (pte == ((void*)0))
  return;

 pte_clear(mm, STUB_DATA, pte);
}
