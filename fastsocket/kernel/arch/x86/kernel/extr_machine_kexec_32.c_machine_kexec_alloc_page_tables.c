
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pte1; int * pte0; int * pmd1; int * pmd0; int * pgd; } ;
struct kimage {TYPE_1__ arch; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ get_zeroed_page (int ) ;
 int machine_kexec_free_page_tables (struct kimage*) ;

__attribute__((used)) static int machine_kexec_alloc_page_tables(struct kimage *image)
{
 image->arch.pgd = (pgd_t *)get_zeroed_page(GFP_KERNEL);




 image->arch.pte0 = (pte_t *)get_zeroed_page(GFP_KERNEL);
 image->arch.pte1 = (pte_t *)get_zeroed_page(GFP_KERNEL);
 if (!image->arch.pgd ||



     !image->arch.pte0 || !image->arch.pte1) {
  machine_kexec_free_page_tables(image);
  return -ENOMEM;
 }
 return 0;
}
