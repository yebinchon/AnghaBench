
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct ipath_portdata {int port_port; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {int ipath_rcvtidcnt; int * ipath_physshadow; int pcidev; struct page** ipath_pageshadow; } ;
struct TYPE_2__ {scalar_t__ sps_pageunlocks; scalar_t__ sps_pagelocks; } ;


 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int VERBOSE ;
 int ipath_cdbg (int ,char*,unsigned long long,...) ;
 int ipath_release_user_pages_on_close (struct page**,int) ;
 TYPE_1__ ipath_stats ;
 int pci_unmap_page (int ,int ,int ,int ) ;

__attribute__((used)) static void unlock_expected_tids(struct ipath_portdata *pd)
{
 struct ipath_devdata *dd = pd->port_dd;
 int port_tidbase = pd->port_port * dd->ipath_rcvtidcnt;
 int i, cnt = 0, maxtid = port_tidbase + dd->ipath_rcvtidcnt;

 ipath_cdbg(VERBOSE, "Port %u unlocking any locked expTID pages\n",
     pd->port_port);
 for (i = port_tidbase; i < maxtid; i++) {
  struct page *ps = dd->ipath_pageshadow[i];

  if (!ps)
   continue;

  dd->ipath_pageshadow[i] = ((void*)0);
  pci_unmap_page(dd->pcidev, dd->ipath_physshadow[i],
   PAGE_SIZE, PCI_DMA_FROMDEVICE);
  ipath_release_user_pages_on_close(&ps, 1);
  cnt++;
  ipath_stats.sps_pageunlocks++;
 }
 if (cnt)
  ipath_cdbg(VERBOSE, "Port %u locked %u expTID entries\n",
      pd->port_port, cnt);

 if (ipath_stats.sps_pagelocks || ipath_stats.sps_pageunlocks)
  ipath_cdbg(VERBOSE, "%llu pages locked, %llu unlocked\n",
      (unsigned long long) ipath_stats.sps_pagelocks,
      (unsigned long long)
      ipath_stats.sps_pageunlocks);
}
