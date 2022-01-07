
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ intr_type; } ;
struct vxgedev {TYPE_2__* pdev; TYPE_1__ config; } ;
struct __vxge_hw_device {int dummy; } ;
struct TYPE_4__ {int irq; } ;


 scalar_t__ INTA ;
 scalar_t__ MSI_X ;
 int free_irq (int ,struct vxgedev*) ;
 scalar_t__ pci_get_drvdata (TYPE_2__*) ;
 int synchronize_irq (int ) ;
 int vxge_rem_msix_isr (struct vxgedev*) ;

__attribute__((used)) static void vxge_rem_isr(struct vxgedev *vdev)
{
 struct __vxge_hw_device *hldev;
 hldev = (struct __vxge_hw_device *) pci_get_drvdata(vdev->pdev);






 if (vdev->config.intr_type == INTA) {
   synchronize_irq(vdev->pdev->irq);
   free_irq(vdev->pdev->irq, vdev);
 }
}
