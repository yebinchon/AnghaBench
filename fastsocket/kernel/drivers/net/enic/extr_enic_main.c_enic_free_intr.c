
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {TYPE_3__* msix; TYPE_1__* msix_entry; TYPE_2__* pdev; int vdev; struct net_device* netdev; } ;
struct enic {TYPE_3__* msix; TYPE_1__* msix_entry; TYPE_2__* pdev; int vdev; struct enic* netdev; } ;
struct TYPE_6__ {struct net_device* devid; int requested; } ;
struct TYPE_5__ {int irq; } ;
struct TYPE_4__ {int vector; } ;


 unsigned int ARRAY_SIZE (TYPE_3__*) ;



 int free_irq (int ,struct net_device*) ;
 int vnic_dev_get_intr_mode (int ) ;

__attribute__((used)) static void enic_free_intr(struct enic *enic)
{
 struct net_device *netdev = enic->netdev;
 unsigned int i;

 switch (vnic_dev_get_intr_mode(enic->vdev)) {
 case 130:
  free_irq(enic->pdev->irq, netdev);
  break;
 case 129:
  free_irq(enic->pdev->irq, enic);
  break;
 case 128:
  for (i = 0; i < ARRAY_SIZE(enic->msix); i++)
   if (enic->msix[i].requested)
    free_irq(enic->msix_entry[i].vector,
     enic->msix[i].devid);
  break;
 default:
  break;
 }
}
