
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcraid_instance {int num_hrrq; scalar_t__ interrupt_mode; int pdev; TYPE_1__* hrrq_vector; } ;
struct TYPE_2__ {int vector; } ;


 int free_irq (int ,TYPE_1__*) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static
void pmcraid_unregister_interrupt_handler(struct pmcraid_instance *pinstance)
{
 int i;

 for (i = 0; i < pinstance->num_hrrq; i++)
  free_irq(pinstance->hrrq_vector[i].vector,
    &(pinstance->hrrq_vector[i]));

 if (pinstance->interrupt_mode) {
  pci_disable_msix(pinstance->pdev);
  pinstance->interrupt_mode = 0;
 }
}
