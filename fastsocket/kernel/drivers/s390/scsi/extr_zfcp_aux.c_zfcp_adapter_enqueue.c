
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int seq_print; } ;
struct TYPE_4__ {int list_lock; int work; int list; } ;
struct zfcp_adapter {int qdio; struct zfcp_adapter* req_list; int dbf; int status; TYPE_2__ service_level; int scan_work; int stat_work; int abort_lock; int erp_lock; int req_list_lock; TYPE_1__ events; int erp_running_head; int erp_ready_head; int port_list_head; int erp_done_wqh; int erp_ready_wq; int remove_wq; int refcount; struct ccw_device* ccw_device; } ;
struct TYPE_6__ {int kobj; } ;
struct ccw_device {TYPE_3__ dev; int * handler; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int ZFCP_STATUS_COMMON_REMOVE ;
 int _zfcp_status_read_scheduler ;
 int atomic_clear_mask (int ,int *) ;
 int atomic_set (int *,int ) ;
 int atomic_set_mask (int ,int *) ;
 int dev_set_drvdata (TYPE_3__*,struct zfcp_adapter*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct zfcp_adapter*) ;
 struct zfcp_adapter* kzalloc (int,int ) ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ sysfs_create_group (int *,int *) ;
 int zfcp_adapter_scsi_register (struct zfcp_adapter*) ;
 scalar_t__ zfcp_allocate_low_mem_buffers (struct zfcp_adapter*) ;
 scalar_t__ zfcp_dbf_adapter_register (struct zfcp_adapter*) ;
 int zfcp_dbf_adapter_unregister (int ) ;
 int zfcp_destroy_adapter_work_queue (struct zfcp_adapter*) ;
 int zfcp_erp_thread_kill (struct zfcp_adapter*) ;
 scalar_t__ zfcp_erp_thread_setup (struct zfcp_adapter*) ;
 int zfcp_fc_gs_destroy (struct zfcp_adapter*) ;
 scalar_t__ zfcp_fc_gs_setup (struct zfcp_adapter*) ;
 int zfcp_fc_post_event ;
 int zfcp_fc_scan_ports ;
 int zfcp_free_low_mem_buffers (struct zfcp_adapter*) ;
 int zfcp_print_sl ;
 int zfcp_qdio_destroy (int ) ;
 scalar_t__ zfcp_qdio_setup (struct zfcp_adapter*) ;
 scalar_t__ zfcp_reqlist_alloc (struct zfcp_adapter*) ;
 scalar_t__ zfcp_setup_adapter_work_queue (struct zfcp_adapter*) ;
 int zfcp_sysfs_adapter_attrs ;

int zfcp_adapter_enqueue(struct ccw_device *ccw_device)
{
 struct zfcp_adapter *adapter;






 adapter = kzalloc(sizeof(struct zfcp_adapter), GFP_KERNEL);
 if (!adapter)
  return -ENOMEM;

 ccw_device->handler = ((void*)0);
 adapter->ccw_device = ccw_device;
 atomic_set(&adapter->refcount, 0);

 if (zfcp_qdio_setup(adapter))
  goto qdio_failed;

 if (zfcp_allocate_low_mem_buffers(adapter))
  goto low_mem_buffers_failed;

 if (zfcp_reqlist_alloc(adapter))
  goto low_mem_buffers_failed;

 if (zfcp_dbf_adapter_register(adapter))
  goto debug_register_failed;

 if (zfcp_setup_adapter_work_queue(adapter))
  goto work_queue_failed;

 if (zfcp_fc_gs_setup(adapter))
  goto generic_services_failed;

 init_waitqueue_head(&adapter->remove_wq);
 init_waitqueue_head(&adapter->erp_ready_wq);
 init_waitqueue_head(&adapter->erp_done_wqh);

 INIT_LIST_HEAD(&adapter->port_list_head);
 INIT_LIST_HEAD(&adapter->erp_ready_head);
 INIT_LIST_HEAD(&adapter->erp_running_head);
 INIT_LIST_HEAD(&adapter->events.list);

 INIT_WORK(&adapter->events.work, zfcp_fc_post_event);
 spin_lock_init(&adapter->events.list_lock);

 spin_lock_init(&adapter->req_list_lock);

 rwlock_init(&adapter->erp_lock);
 rwlock_init(&adapter->abort_lock);

 if (zfcp_erp_thread_setup(adapter))
  goto erp_thread_failed;

 INIT_WORK(&adapter->stat_work, _zfcp_status_read_scheduler);
 INIT_WORK(&adapter->scan_work, zfcp_fc_scan_ports);

 adapter->service_level.seq_print = zfcp_print_sl;


 atomic_set_mask(ZFCP_STATUS_COMMON_REMOVE, &adapter->status);

 dev_set_drvdata(&ccw_device->dev, adapter);

 if (sysfs_create_group(&ccw_device->dev.kobj,
          &zfcp_sysfs_adapter_attrs))
  goto sysfs_failed;

 atomic_clear_mask(ZFCP_STATUS_COMMON_REMOVE, &adapter->status);

 if (!zfcp_adapter_scsi_register(adapter))
  return 0;

sysfs_failed:
 zfcp_erp_thread_kill(adapter);
erp_thread_failed:
 zfcp_fc_gs_destroy(adapter);
generic_services_failed:
 zfcp_destroy_adapter_work_queue(adapter);
work_queue_failed:
 zfcp_dbf_adapter_unregister(adapter->dbf);
debug_register_failed:
 dev_set_drvdata(&ccw_device->dev, ((void*)0));
 kfree(adapter->req_list);
low_mem_buffers_failed:
 zfcp_free_low_mem_buffers(adapter);
qdio_failed:
 zfcp_qdio_destroy(adapter->qdio);
 kfree(adapter);
 return -ENOMEM;
}
