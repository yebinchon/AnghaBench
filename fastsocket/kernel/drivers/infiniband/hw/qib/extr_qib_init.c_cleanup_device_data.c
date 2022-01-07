
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qib_devdata {int num_pports; int cfgctxts; int rcvtidcnt; int ctxtcnt; struct qib_ctxtdata** boardname; int uctxt_lock; struct qib_ctxtdata** rcd; struct page** pageshadow; TYPE_2__* pcidev; int * physshadow; int * pioavailregs_dma; int pioavailregs_phys; TYPE_1__* pport; } ;
struct qib_ctxtdata {int dummy; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int cc_shadow_lock; struct qib_ctxtdata** congestion_entries_shadow; struct qib_ctxtdata** ccti_entries_shadow; struct qib_ctxtdata** ccti_entries; struct qib_ctxtdata** congestion_entries; int * statusp; } ;


 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int QIB_STATUS_CHIP_PRESENT ;
 int dma_free_coherent (int *,int ,void*,int ) ;
 int kfree (struct qib_ctxtdata**) ;
 int pci_unmap_page (TYPE_2__*,int ,int ,int ) ;
 int qib_disable_wc (struct qib_devdata*) ;
 int qib_free_ctxtdata (struct qib_devdata*,struct qib_ctxtdata*) ;
 int qib_release_user_pages (struct page**,int) ;
 int qib_wc_pat ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vfree (struct page**) ;

__attribute__((used)) static void cleanup_device_data(struct qib_devdata *dd)
{
 int ctxt;
 int pidx;
 struct qib_ctxtdata **tmp;
 unsigned long flags;


 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  if (dd->pport[pidx].statusp)
   *dd->pport[pidx].statusp &= ~QIB_STATUS_CHIP_PRESENT;

  spin_lock(&dd->pport[pidx].cc_shadow_lock);

  kfree(dd->pport[pidx].congestion_entries);
  dd->pport[pidx].congestion_entries = ((void*)0);
  kfree(dd->pport[pidx].ccti_entries);
  dd->pport[pidx].ccti_entries = ((void*)0);
  kfree(dd->pport[pidx].ccti_entries_shadow);
  dd->pport[pidx].ccti_entries_shadow = ((void*)0);
  kfree(dd->pport[pidx].congestion_entries_shadow);
  dd->pport[pidx].congestion_entries_shadow = ((void*)0);

  spin_unlock(&dd->pport[pidx].cc_shadow_lock);
 }

 if (!qib_wc_pat)
  qib_disable_wc(dd);

 if (dd->pioavailregs_dma) {
  dma_free_coherent(&dd->pcidev->dev, PAGE_SIZE,
      (void *) dd->pioavailregs_dma,
      dd->pioavailregs_phys);
  dd->pioavailregs_dma = ((void*)0);
 }

 if (dd->pageshadow) {
  struct page **tmpp = dd->pageshadow;
  dma_addr_t *tmpd = dd->physshadow;
  int i, cnt = 0;

  for (ctxt = 0; ctxt < dd->cfgctxts; ctxt++) {
   int ctxt_tidbase = ctxt * dd->rcvtidcnt;
   int maxtid = ctxt_tidbase + dd->rcvtidcnt;

   for (i = ctxt_tidbase; i < maxtid; i++) {
    if (!tmpp[i])
     continue;
    pci_unmap_page(dd->pcidev, tmpd[i],
            PAGE_SIZE, PCI_DMA_FROMDEVICE);
    qib_release_user_pages(&tmpp[i], 1);
    tmpp[i] = ((void*)0);
    cnt++;
   }
  }

  tmpp = dd->pageshadow;
  dd->pageshadow = ((void*)0);
  vfree(tmpp);
 }
 spin_lock_irqsave(&dd->uctxt_lock, flags);
 tmp = dd->rcd;
 dd->rcd = ((void*)0);
 spin_unlock_irqrestore(&dd->uctxt_lock, flags);
 for (ctxt = 0; tmp && ctxt < dd->ctxtcnt; ctxt++) {
  struct qib_ctxtdata *rcd = tmp[ctxt];

  tmp[ctxt] = ((void*)0);
  qib_free_ctxtdata(dd, rcd);
 }
 kfree(tmp);
 kfree(dd->boardname);
}
