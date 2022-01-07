
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ipath_devdata {int ipath_pioavregs; char* ipath_freezemsg; int ipath_freezelen; int * ipath_statusp; int _ipath_status; scalar_t__ ipath_pioavailregs_dma; int ipath_pioavailregs_phys; TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int L1_CACHE_BYTES ;
 int PAGE_SIZE ;
 scalar_t__ dma_alloc_coherent (int *,int ,int *,int ) ;
 int ipath_dev_err (struct ipath_devdata*,char*) ;

__attribute__((used)) static int init_pioavailregs(struct ipath_devdata *dd)
{
 int ret;

 dd->ipath_pioavailregs_dma = dma_alloc_coherent(
  &dd->pcidev->dev, PAGE_SIZE, &dd->ipath_pioavailregs_phys,
  GFP_KERNEL);
 if (!dd->ipath_pioavailregs_dma) {
  ipath_dev_err(dd, "failed to allocate PIOavail reg area "
         "in memory\n");
  ret = -ENOMEM;
  goto done;
 }





 dd->ipath_statusp = (u64 *)
  ((char *)dd->ipath_pioavailregs_dma +
   ((2 * L1_CACHE_BYTES +
     dd->ipath_pioavregs * sizeof(u64)) & ~L1_CACHE_BYTES));

 *dd->ipath_statusp = dd->_ipath_status;




 dd->ipath_freezemsg = (char *)&dd->ipath_statusp[1];

 dd->ipath_freezelen = L1_CACHE_BYTES - sizeof(dd->ipath_statusp[0]);

 ret = 0;

done:
 return ret;
}
