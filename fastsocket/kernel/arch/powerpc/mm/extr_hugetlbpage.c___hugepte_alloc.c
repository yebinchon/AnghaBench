
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mm_struct {int page_table_lock; } ;
typedef int pte_t ;
struct TYPE_4__ {unsigned long pd; } ;
typedef TYPE_1__ hugepd_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long HUGEPD_OK ;
 size_t HUGE_PGTABLE_INDEX (unsigned int) ;
 int __GFP_REPEAT ;
 int hugepd_none (TYPE_1__) ;
 int kmem_cache_free (int ,int *) ;
 int * kmem_cache_zalloc (int ,int) ;
 int * pgtable_cache ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __hugepte_alloc(struct mm_struct *mm, hugepd_t *hpdp,
      unsigned long address, unsigned int psize)
{
 pte_t *new = kmem_cache_zalloc(pgtable_cache[HUGE_PGTABLE_INDEX(psize)],
          GFP_KERNEL|__GFP_REPEAT);

 if (! new)
  return -ENOMEM;

 spin_lock(&mm->page_table_lock);
 if (!hugepd_none(*hpdp))
  kmem_cache_free(pgtable_cache[HUGE_PGTABLE_INDEX(psize)], new);
 else
  hpdp->pd = (unsigned long)new | HUGEPD_OK;
 spin_unlock(&mm->page_table_lock);
 return 0;
}
