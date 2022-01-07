
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int start; } ;
typedef int pgd_t ;


 int PAGE_SHIFT ;
 scalar_t__ __va (unsigned long) ;
 int init_level4_page (struct kimage*,int *,int ,int) ;
 int init_one_level2_page (struct kimage*,int *,int ) ;
 int init_transition_pgtable (struct kimage*,int *) ;
 int max_pfn ;

__attribute__((used)) static int init_pgtable(struct kimage *image, unsigned long start_pgtable)
{
 pgd_t *level4p;
 int result;
 level4p = (pgd_t *)__va(start_pgtable);
 result = init_level4_page(image, level4p, 0, max_pfn << PAGE_SHIFT);
 if (result)
  return result;




 result = init_one_level2_page(image, level4p, image->start);
 if (result)
  return result;
 return init_transition_pgtable(image, level4p);
}
