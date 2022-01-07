
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pte1; int pgd; int * pmd1; int pte0; int * pmd0; } ;
struct kimage {TYPE_1__ arch; int control_code_page; } ;
typedef int pmd_t ;


 unsigned long __pa (void*) ;
 int machine_kexec_page_table_set_one (int ,int *,int ,unsigned long,unsigned long) ;
 void* page_address (int ) ;

__attribute__((used)) static void machine_kexec_prepare_page_tables(struct kimage *image)
{
 void *control_page;
 pmd_t *pmd = ((void*)0);

 control_page = page_address(image->control_code_page);



 machine_kexec_page_table_set_one(
  image->arch.pgd, pmd, image->arch.pte0,
  (unsigned long)control_page, __pa(control_page));



 machine_kexec_page_table_set_one(
  image->arch.pgd, pmd, image->arch.pte1,
  __pa(control_page), __pa(control_page));
}
