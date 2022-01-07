
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int erp_running_head; int erp_ready_head; int * erp_thread; } ;


 int WARN_ON (int) ;
 int kthread_stop (int *) ;
 int list_empty (int *) ;

void zfcp_erp_thread_kill(struct zfcp_adapter *adapter)
{
 kthread_stop(adapter->erp_thread);
 adapter->erp_thread = ((void*)0);
 WARN_ON(!list_empty(&adapter->erp_ready_head));
 WARN_ON(!list_empty(&adapter->erp_running_head));
}
