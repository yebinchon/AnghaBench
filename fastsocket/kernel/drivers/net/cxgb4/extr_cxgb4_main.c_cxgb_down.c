
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adapter {int tid_release_task_busy; int flags; TYPE_2__* pdev; TYPE_1__* msix_info; int * tid_release_head; int db_drop_task; int db_full_task; int tid_release_task; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vec; } ;


 int FULL_INIT_DONE ;
 int USING_MSIX ;
 int cancel_work_sync (int *) ;
 int free_irq (int ,struct adapter*) ;
 int free_msix_queue_irqs (struct adapter*) ;
 int quiesce_rx (struct adapter*) ;
 int t4_free_sge_resources (struct adapter*) ;
 int t4_intr_disable (struct adapter*) ;
 int t4_sge_stop (struct adapter*) ;

__attribute__((used)) static void cxgb_down(struct adapter *adapter)
{
 t4_intr_disable(adapter);
 cancel_work_sync(&adapter->tid_release_task);
 cancel_work_sync(&adapter->db_full_task);
 cancel_work_sync(&adapter->db_drop_task);
 adapter->tid_release_task_busy = 0;
 adapter->tid_release_head = ((void*)0);

 if (adapter->flags & USING_MSIX) {
  free_msix_queue_irqs(adapter);
  free_irq(adapter->msix_info[0].vec, adapter);
 } else
  free_irq(adapter->pdev->irq, adapter);
 quiesce_rx(adapter);
 t4_sge_stop(adapter);
 t4_free_sge_resources(adapter);
 adapter->flags &= ~FULL_INIT_DONE;
}
