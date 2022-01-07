
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ipath_devdata {int ipath_cfgports; int ipath_rcvtidcnt; int * ipath_physshadow; struct page** ipath_pageshadow; } ;
typedef int dma_addr_t ;


 int ipath_dev_err (struct ipath_devdata*,char*) ;
 int vfree (struct page**) ;
 int * vmalloc (int) ;
 struct page** vzalloc (int) ;

__attribute__((used)) static void init_shadow_tids(struct ipath_devdata *dd)
{
 struct page **pages;
 dma_addr_t *addrs;

 pages = vzalloc(dd->ipath_cfgports * dd->ipath_rcvtidcnt *
   sizeof(struct page *));
 if (!pages) {
  ipath_dev_err(dd, "failed to allocate shadow page * "
         "array, no expected sends!\n");
  dd->ipath_pageshadow = ((void*)0);
  return;
 }

 addrs = vmalloc(dd->ipath_cfgports * dd->ipath_rcvtidcnt *
   sizeof(dma_addr_t));
 if (!addrs) {
  ipath_dev_err(dd, "failed to allocate shadow dma handle "
         "array, no expected sends!\n");
  vfree(pages);
  dd->ipath_pageshadow = ((void*)0);
  return;
 }

 dd->ipath_pageshadow = pages;
 dd->ipath_physshadow = addrs;
}
