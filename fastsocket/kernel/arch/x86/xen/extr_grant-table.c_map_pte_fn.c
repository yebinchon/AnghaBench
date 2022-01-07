
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;


 int PAGE_KERNEL ;
 int init_mm ;
 int mfn_pte (unsigned long,int ) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;

__attribute__((used)) static int map_pte_fn(pte_t *pte, struct page *pmd_page,
        unsigned long addr, void *data)
{
 unsigned long **frames = (unsigned long **)data;

 set_pte_at(&init_mm, addr, pte, mfn_pte((*frames)[0], PAGE_KERNEL));
 (*frames)++;
 return 0;
}
