
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int PGALLOC_GFP ;
 scalar_t__ __get_free_page (int ) ;

pte_t *pte_alloc_one_kernel(struct mm_struct *mm, unsigned long address)
{
 return (pte_t *)__get_free_page(PGALLOC_GFP);
}
