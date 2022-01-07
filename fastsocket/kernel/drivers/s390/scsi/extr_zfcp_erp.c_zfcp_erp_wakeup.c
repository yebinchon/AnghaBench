
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_adapter {int erp_lock; int erp_done_wqh; int status; int erp_running_head; int erp_ready_head; } ;
struct TYPE_2__ {int config_lock; } ;


 int ZFCP_STATUS_ADAPTER_ERP_PENDING ;
 int atomic_clear_mask (int ,int *) ;
 scalar_t__ list_empty (int *) ;
 int read_lock (int *) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock (int *) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;
 TYPE_1__ zfcp_data ;

__attribute__((used)) static void zfcp_erp_wakeup(struct zfcp_adapter *adapter)
{
 unsigned long flags;

 read_lock_irqsave(&zfcp_data.config_lock, flags);
 read_lock(&adapter->erp_lock);
 if (list_empty(&adapter->erp_ready_head) &&
     list_empty(&adapter->erp_running_head)) {
   atomic_clear_mask(ZFCP_STATUS_ADAPTER_ERP_PENDING,
       &adapter->status);
   wake_up(&adapter->erp_done_wqh);
 }
 read_unlock(&adapter->erp_lock);
 read_unlock_irqrestore(&zfcp_data.config_lock, flags);
}
