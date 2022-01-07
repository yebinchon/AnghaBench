
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct qib_devdata {int pioavregs; int num_pports; char* freezemsg; scalar_t__ freezelen; scalar_t__ pioavailregs_dma; TYPE_2__* pport; int * devstatusp; int pioavailregs_phys; TYPE_1__* pcidev; } ;
struct TYPE_4__ {int * statusp; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int L1_CACHE_BYTES ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ dma_alloc_coherent (int *,scalar_t__,int *,int ) ;
 int qib_dev_err (struct qib_devdata*,char*) ;

__attribute__((used)) static int init_pioavailregs(struct qib_devdata *dd)
{
 int ret, pidx;
 u64 *status_page;

 dd->pioavailregs_dma = dma_alloc_coherent(
  &dd->pcidev->dev, PAGE_SIZE, &dd->pioavailregs_phys,
  GFP_KERNEL);
 if (!dd->pioavailregs_dma) {
  qib_dev_err(dd,
   "failed to allocate PIOavail reg area in memory\n");
  ret = -ENOMEM;
  goto done;
 }





 status_page = (u64 *)
  ((char *) dd->pioavailregs_dma +
   ((2 * L1_CACHE_BYTES +
     dd->pioavregs * sizeof(u64)) & ~L1_CACHE_BYTES));

 dd->devstatusp = status_page;
 *status_page++ = 0;
 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  dd->pport[pidx].statusp = status_page;
  *status_page++ = 0;
 }





 dd->freezemsg = (char *) status_page;
 *dd->freezemsg = 0;

 ret = (char *) status_page - (char *) dd->pioavailregs_dma;
 dd->freezelen = PAGE_SIZE - ret;

 ret = 0;

done:
 return ret;
}
