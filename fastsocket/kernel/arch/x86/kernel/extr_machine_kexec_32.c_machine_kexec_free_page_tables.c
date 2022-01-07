
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pte1; scalar_t__ pte0; scalar_t__ pmd1; scalar_t__ pmd0; scalar_t__ pgd; } ;
struct kimage {TYPE_1__ arch; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void machine_kexec_free_page_tables(struct kimage *image)
{
 free_page((unsigned long)image->arch.pgd);




 free_page((unsigned long)image->arch.pte0);
 free_page((unsigned long)image->arch.pte1);
}
