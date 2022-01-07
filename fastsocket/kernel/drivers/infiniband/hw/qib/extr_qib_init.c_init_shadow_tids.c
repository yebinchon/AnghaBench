
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int cfgctxts; int rcvtidcnt; struct page** pageshadow; int * physshadow; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;


 int qib_dev_err (struct qib_devdata*,char*) ;
 int vfree (struct page**) ;
 void* vzalloc (int) ;

__attribute__((used)) static void init_shadow_tids(struct qib_devdata *dd)
{
 struct page **pages;
 dma_addr_t *addrs;

 pages = vzalloc(dd->cfgctxts * dd->rcvtidcnt * sizeof(struct page *));
 if (!pages) {
  qib_dev_err(dd,
   "failed to allocate shadow page * array, no expected sends!\n");
  goto bail;
 }

 addrs = vzalloc(dd->cfgctxts * dd->rcvtidcnt * sizeof(dma_addr_t));
 if (!addrs) {
  qib_dev_err(dd,
   "failed to allocate shadow dma handle array, no expected sends!\n");
  goto bail_free;
 }

 dd->pageshadow = pages;
 dd->physshadow = addrs;
 return;

bail_free:
 vfree(pages);
bail:
 dd->pageshadow = ((void*)0);
}
