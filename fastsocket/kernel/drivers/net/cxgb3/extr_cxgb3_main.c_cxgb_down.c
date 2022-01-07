
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int work_lock; } ;


 int cxgb3_wq ;
 int flush_workqueue (int ) ;
 int free_irq_resources (struct adapter*) ;
 int quiesce_rx (struct adapter*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int t3_intr_disable (struct adapter*) ;
 int t3_sge_stop (struct adapter*) ;

__attribute__((used)) static void cxgb_down(struct adapter *adapter, int on_wq)
{
 t3_sge_stop(adapter);
 spin_lock_irq(&adapter->work_lock);
 t3_intr_disable(adapter);
 spin_unlock_irq(&adapter->work_lock);

 free_irq_resources(adapter);
 quiesce_rx(adapter);
 t3_sge_stop(adapter);
 if (!on_wq)
  flush_workqueue(cxgb3_wq);
}
