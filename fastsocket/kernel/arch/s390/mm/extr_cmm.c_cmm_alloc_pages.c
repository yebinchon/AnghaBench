
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmm_page_array {scalar_t__ index; unsigned long* pages; struct cmm_page_array* next; } ;


 scalar_t__ CMM_NR_PAGES ;
 int GFP_NOIO ;
 unsigned long PAGE_SHIFT ;
 unsigned long __get_free_page (int ) ;
 int cmm_lock ;
 int diag10_range (unsigned long,int) ;
 int free_page (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static long
cmm_alloc_pages(long nr, long *counter, struct cmm_page_array **list)
{
 struct cmm_page_array *pa, *npa;
 unsigned long addr;

 while (nr) {
  addr = __get_free_page(GFP_NOIO);
  if (!addr)
   break;
  spin_lock(&cmm_lock);
  pa = *list;
  if (!pa || pa->index >= CMM_NR_PAGES) {

   spin_unlock(&cmm_lock);
   npa = (struct cmm_page_array *)
    __get_free_page(GFP_NOIO);
   if (!npa) {
    free_page(addr);
    break;
   }
   spin_lock(&cmm_lock);
   pa = *list;
   if (!pa || pa->index >= CMM_NR_PAGES) {
    npa->next = pa;
    npa->index = 0;
    pa = npa;
    *list = pa;
   } else
    free_page((unsigned long) npa);
  }
  diag10_range(addr >> PAGE_SHIFT, 1);
  pa->pages[pa->index++] = addr;
  (*counter)++;
  spin_unlock(&cmm_lock);
  nr--;
 }
 return nr;
}
