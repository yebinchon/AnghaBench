
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcraid_instance {int * control_pool; TYPE_1__** cmd_list; } ;
struct TYPE_2__ {scalar_t__ ioa_cb_bus_addr; int * ioa_cb; } ;


 int pci_pool_destroy (int *) ;
 int pci_pool_free (int *,int *,scalar_t__) ;

__attribute__((used)) static void
pmcraid_release_control_blocks(
 struct pmcraid_instance *pinstance,
 int max_index
)
{
 int i;

 if (pinstance->control_pool == ((void*)0))
  return;

 for (i = 0; i < max_index; i++) {
  pci_pool_free(pinstance->control_pool,
         pinstance->cmd_list[i]->ioa_cb,
         pinstance->cmd_list[i]->ioa_cb_bus_addr);
  pinstance->cmd_list[i]->ioa_cb = ((void*)0);
  pinstance->cmd_list[i]->ioa_cb_bus_addr = 0;
 }
 pci_pool_destroy(pinstance->control_pool);
 pinstance->control_pool = ((void*)0);
}
