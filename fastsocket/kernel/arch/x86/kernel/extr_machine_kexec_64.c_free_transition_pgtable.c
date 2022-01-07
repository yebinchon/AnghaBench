
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pte; scalar_t__ pmd; scalar_t__ pud; } ;
struct kimage {TYPE_1__ arch; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void free_transition_pgtable(struct kimage *image)
{
 free_page((unsigned long)image->arch.pud);
 free_page((unsigned long)image->arch.pmd);
 free_page((unsigned long)image->arch.pte);
}
