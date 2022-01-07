
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qib_devdata {int rcvhdrcnt; int rcvhdrentsize; TYPE_2__* cspec; TYPE_1__* pcidev; } ;
struct TYPE_4__ {int * dummy_hdrq; int dummy_hdrq_phys; int portcntrs; int cntrs; } ;
struct TYPE_3__ {int dev; } ;


 int ALIGN (int,int ) ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (int ) ;
 int qib_6120_free_irq (struct qib_devdata*) ;

__attribute__((used)) static void qib_6120_setup_cleanup(struct qib_devdata *dd)
{
 qib_6120_free_irq(dd);
 kfree(dd->cspec->cntrs);
 kfree(dd->cspec->portcntrs);
 if (dd->cspec->dummy_hdrq) {
  dma_free_coherent(&dd->pcidev->dev,
      ALIGN(dd->rcvhdrcnt *
     dd->rcvhdrentsize *
     sizeof(u32), PAGE_SIZE),
      dd->cspec->dummy_hdrq,
      dd->cspec->dummy_hdrq_phys);
  dd->cspec->dummy_hdrq = ((void*)0);
 }
}
