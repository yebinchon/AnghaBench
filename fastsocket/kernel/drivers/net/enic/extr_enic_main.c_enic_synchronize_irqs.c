
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct enic {unsigned int intr_count; TYPE_2__* msix_entry; TYPE_1__* pdev; int vdev; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int irq; } ;





 int synchronize_irq (int ) ;
 int vnic_dev_get_intr_mode (int ) ;

__attribute__((used)) static void enic_synchronize_irqs(struct enic *enic)
{
 unsigned int i;

 switch (vnic_dev_get_intr_mode(enic->vdev)) {
 case 130:
 case 129:
  synchronize_irq(enic->pdev->irq);
  break;
 case 128:
  for (i = 0; i < enic->intr_count; i++)
   synchronize_irq(enic->msix_entry[i].vector);
  break;
 default:
  break;
 }
}
