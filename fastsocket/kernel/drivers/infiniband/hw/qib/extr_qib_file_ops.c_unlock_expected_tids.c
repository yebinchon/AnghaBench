
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int rcvtidcnt; int pcidev; struct page** pageshadow; int tidinvalid; int * physshadow; } ;
struct qib_ctxtdata {int ctxt; struct qib_devdata* dd; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;


 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int qib_release_user_pages (struct page**,int) ;

__attribute__((used)) static void unlock_expected_tids(struct qib_ctxtdata *rcd)
{
 struct qib_devdata *dd = rcd->dd;
 int ctxt_tidbase = rcd->ctxt * dd->rcvtidcnt;
 int i, cnt = 0, maxtid = ctxt_tidbase + dd->rcvtidcnt;

 for (i = ctxt_tidbase; i < maxtid; i++) {
  struct page *p = dd->pageshadow[i];
  dma_addr_t phys;

  if (!p)
   continue;

  phys = dd->physshadow[i];
  dd->physshadow[i] = dd->tidinvalid;
  dd->pageshadow[i] = ((void*)0);
  pci_unmap_page(dd->pcidev, phys, PAGE_SIZE,
          PCI_DMA_FROMDEVICE);
  qib_release_user_pages(&p, 1);
  cnt++;
 }
}
