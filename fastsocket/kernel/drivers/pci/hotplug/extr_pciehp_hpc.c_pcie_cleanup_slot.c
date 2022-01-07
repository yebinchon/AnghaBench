
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int work; } ;
struct controller {struct slot* slot; } ;


 int cancel_delayed_work (int *) ;
 int flush_scheduled_work () ;
 int flush_workqueue (int ) ;
 int kfree (struct slot*) ;
 int pciehp_wq ;

__attribute__((used)) static void pcie_cleanup_slot(struct controller *ctrl)
{
 struct slot *slot = ctrl->slot;
 cancel_delayed_work(&slot->work);
 flush_scheduled_work();
 flush_workqueue(pciehp_wq);
 kfree(slot);
}
