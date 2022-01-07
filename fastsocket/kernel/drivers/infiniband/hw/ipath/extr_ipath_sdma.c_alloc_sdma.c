
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipath_sdma_desc {int dummy; } ;
struct TYPE_4__ {unsigned long data; int function; } ;
struct ipath_devdata {int ipath_sdma_descq_cnt; scalar_t__ ipath_sdma_descq_phys; int * ipath_sdma_descq; TYPE_1__* pcidev; int ipath_sdma_vl15_count; TYPE_2__ ipath_sdma_vl15_timer; scalar_t__* ipath_sdma_head_dma; scalar_t__ ipath_sdma_head_phys; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SDMA_DESCQ_SZ ;
 int atomic_set (int *,int ) ;
 void* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int,void*,scalar_t__) ;
 int init_timer (TYPE_2__*) ;
 int ipath_dev_err (struct ipath_devdata*,char*) ;
 int vl15_watchdog_timeout ;

__attribute__((used)) static int alloc_sdma(struct ipath_devdata *dd)
{
 int ret = 0;


 dd->ipath_sdma_descq = dma_alloc_coherent(&dd->pcidev->dev,
  SDMA_DESCQ_SZ, &dd->ipath_sdma_descq_phys, GFP_KERNEL);

 if (!dd->ipath_sdma_descq) {
  ipath_dev_err(dd, "failed to allocate SendDMA descriptor "
   "FIFO memory\n");
  ret = -ENOMEM;
  goto done;
 }

 dd->ipath_sdma_descq_cnt =
  SDMA_DESCQ_SZ / sizeof(struct ipath_sdma_desc);


 dd->ipath_sdma_head_dma = dma_alloc_coherent(&dd->pcidev->dev,
  PAGE_SIZE, &dd->ipath_sdma_head_phys, GFP_KERNEL);
 if (!dd->ipath_sdma_head_dma) {
  ipath_dev_err(dd, "failed to allocate SendDMA head memory\n");
  ret = -ENOMEM;
  goto cleanup_descq;
 }
 dd->ipath_sdma_head_dma[0] = 0;

 init_timer(&dd->ipath_sdma_vl15_timer);
 dd->ipath_sdma_vl15_timer.function = vl15_watchdog_timeout;
 dd->ipath_sdma_vl15_timer.data = (unsigned long)dd;
 atomic_set(&dd->ipath_sdma_vl15_count, 0);

 goto done;

cleanup_descq:
 dma_free_coherent(&dd->pcidev->dev, SDMA_DESCQ_SZ,
  (void *)dd->ipath_sdma_descq, dd->ipath_sdma_descq_phys);
 dd->ipath_sdma_descq = ((void*)0);
 dd->ipath_sdma_descq_phys = 0;
done:
 return ret;
}
