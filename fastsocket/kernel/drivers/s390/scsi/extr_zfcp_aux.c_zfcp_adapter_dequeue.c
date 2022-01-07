
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_adapter {struct zfcp_adapter* stats_reset_data; struct zfcp_adapter* fc_stats; struct zfcp_adapter* req_list; int qdio; int dbf; int req_list_lock; TYPE_2__* ccw_device; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int kfree (struct zfcp_adapter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_remove_group (int *,int *) ;
 int zfcp_dbf_adapter_unregister (int ) ;
 int zfcp_erp_thread_kill (struct zfcp_adapter*) ;
 int zfcp_free_low_mem_buffers (struct zfcp_adapter*) ;
 int zfcp_qdio_destroy (int ) ;
 int zfcp_reqlist_isempty (struct zfcp_adapter*) ;
 int zfcp_sysfs_adapter_attrs ;

void zfcp_adapter_dequeue(struct zfcp_adapter *adapter)
{
 int retval = 0;
 unsigned long flags;

 sysfs_remove_group(&adapter->ccw_device->dev.kobj,
      &zfcp_sysfs_adapter_attrs);

 spin_lock_irqsave(&adapter->req_list_lock, flags);
 retval = zfcp_reqlist_isempty(adapter);
 spin_unlock_irqrestore(&adapter->req_list_lock, flags);
 if (!retval)
  return;

 zfcp_erp_thread_kill(adapter);
 zfcp_dbf_adapter_unregister(adapter->dbf);
 zfcp_free_low_mem_buffers(adapter);
 zfcp_qdio_destroy(adapter->qdio);
 kfree(adapter->req_list);
 kfree(adapter->fc_stats);
 kfree(adapter->stats_reset_data);
 kfree(adapter);
}
