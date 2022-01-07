
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int destroy_workqueue (int ) ;
 int kfree (struct controller*) ;
 int pcie_cleanup_slot (struct controller*) ;
 int pcie_shutdown_notification (struct controller*) ;
 int pciehp_num_controllers ;
 int pciehp_wq ;

void pciehp_release_ctrl(struct controller *ctrl)
{
 pcie_shutdown_notification(ctrl);
 pcie_cleanup_slot(ctrl);




 if (atomic_dec_and_test(&pciehp_num_controllers))
  destroy_workqueue(pciehp_wq);
 kfree(ctrl);
}
