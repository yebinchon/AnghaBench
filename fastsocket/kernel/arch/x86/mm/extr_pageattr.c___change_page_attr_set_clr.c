
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpa_data {int numpages; int flags; int* vaddr; int curpage; } ;


 int BUG_ON (int) ;
 int CPA_ARRAY ;
 int CPA_PAGES_ARRAY ;
 int PAGE_SIZE ;
 int __change_page_attr (struct cpa_data*,int) ;
 int cpa_lock ;
 int cpa_process_alias (struct cpa_data*) ;
 int debug_pagealloc ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __change_page_attr_set_clr(struct cpa_data *cpa, int checkalias)
{
 int ret, numpages = cpa->numpages;

 while (numpages) {




  cpa->numpages = numpages;

  if (cpa->flags & (CPA_ARRAY | CPA_PAGES_ARRAY))
   cpa->numpages = 1;

  if (!debug_pagealloc)
   spin_lock(&cpa_lock);
  ret = __change_page_attr(cpa, checkalias);
  if (!debug_pagealloc)
   spin_unlock(&cpa_lock);
  if (ret)
   return ret;

  if (checkalias) {
   ret = cpa_process_alias(cpa);
   if (ret)
    return ret;
  }






  BUG_ON(cpa->numpages > numpages);
  numpages -= cpa->numpages;
  if (cpa->flags & (CPA_PAGES_ARRAY | CPA_ARRAY))
   cpa->curpage++;
  else
   *cpa->vaddr += cpa->numpages * PAGE_SIZE;

 }
 return 0;
}
