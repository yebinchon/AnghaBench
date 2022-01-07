
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;


 int __pte (int ) ;
 int init_mm ;
 int set_pte_at (int *,unsigned long,int *,int ) ;

__attribute__((used)) static int unmap_pte_fn(pte_t *pte, struct page *pmd_page,
   unsigned long addr, void *data)
{

 set_pte_at(&init_mm, addr, pte, __pte(0));
 return 0;
}
