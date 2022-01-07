
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fnic {TYPE_3__* msix; TYPE_2__* msix_entry; TYPE_1__* pdev; int vdev; } ;
struct TYPE_6__ {struct fnic* devid; int requested; } ;
struct TYPE_5__ {int vector; } ;
struct TYPE_4__ {int irq; } ;


 int ARRAY_SIZE (TYPE_3__*) ;



 int free_irq (int ,struct fnic*) ;
 int vnic_dev_get_intr_mode (int ) ;

void fnic_free_intr(struct fnic *fnic)
{
 int i;

 switch (vnic_dev_get_intr_mode(fnic->vdev)) {
 case 130:
 case 129:
  free_irq(fnic->pdev->irq, fnic);
  break;

 case 128:
  for (i = 0; i < ARRAY_SIZE(fnic->msix); i++)
   if (fnic->msix[i].requested)
    free_irq(fnic->msix_entry[i].vector,
      fnic->msix[i].devid);
  break;

 default:
  break;
 }
}
