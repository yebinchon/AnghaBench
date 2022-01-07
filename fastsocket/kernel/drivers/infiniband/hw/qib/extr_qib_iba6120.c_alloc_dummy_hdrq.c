
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qib_devdata {TYPE_1__* cspec; TYPE_3__* pcidev; TYPE_2__** rcd; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int rcvhdrq_size; } ;
struct TYPE_4__ {unsigned long dummy_hdrq_phys; int dummy_hdrq; } ;


 int GFP_ATOMIC ;
 int __GFP_COMP ;
 int dma_alloc_coherent (int *,int ,unsigned long*,int) ;
 int qib_devinfo (TYPE_3__*,char*) ;

__attribute__((used)) static void alloc_dummy_hdrq(struct qib_devdata *dd)
{
 dd->cspec->dummy_hdrq = dma_alloc_coherent(&dd->pcidev->dev,
     dd->rcd[0]->rcvhdrq_size,
     &dd->cspec->dummy_hdrq_phys,
     GFP_ATOMIC | __GFP_COMP);
 if (!dd->cspec->dummy_hdrq) {
  qib_devinfo(dd->pcidev, "Couldn't allocate dummy hdrq\n");

  dd->cspec->dummy_hdrq_phys = 0UL;
 }
}
