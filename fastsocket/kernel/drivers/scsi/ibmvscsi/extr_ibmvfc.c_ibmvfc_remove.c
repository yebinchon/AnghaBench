
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vio_dev {int dev; } ;
struct ibmvfc_host {TYPE_2__* host; int queue; int work_thread; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {int host_lock; TYPE_1__ shost_dev; } ;


 int DID_ERROR ;
 int ENTER ;
 int IBMVFC_HOST_OFFLINE ;
 int LEAVE ;
 struct ibmvfc_host* dev_get_drvdata (int *) ;
 int fc_remove_host (TYPE_2__*) ;
 int ibmvfc_driver_lock ;
 int ibmvfc_free_event_pool (struct ibmvfc_host*) ;
 int ibmvfc_free_mem (struct ibmvfc_host*) ;
 int ibmvfc_link_down (struct ibmvfc_host*,int ) ;
 int ibmvfc_purge_requests (struct ibmvfc_host*,int ) ;
 int ibmvfc_release_crq_queue (struct ibmvfc_host*) ;
 int ibmvfc_remove_trace_file (int *,int *) ;
 int ibmvfc_trace_attr ;
 int ibmvfc_wait_while_resetting (struct ibmvfc_host*) ;
 int kthread_stop (int ) ;
 int list_del (int *) ;
 int scsi_host_put (TYPE_2__*) ;
 int scsi_remove_host (TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ibmvfc_remove(struct vio_dev *vdev)
{
 struct ibmvfc_host *vhost = dev_get_drvdata(&vdev->dev);
 unsigned long flags;

 ENTER;
 ibmvfc_remove_trace_file(&vhost->host->shost_dev.kobj, &ibmvfc_trace_attr);

 spin_lock_irqsave(vhost->host->host_lock, flags);
 ibmvfc_link_down(vhost, IBMVFC_HOST_OFFLINE);
 spin_unlock_irqrestore(vhost->host->host_lock, flags);

 ibmvfc_wait_while_resetting(vhost);
 ibmvfc_release_crq_queue(vhost);
 kthread_stop(vhost->work_thread);
 fc_remove_host(vhost->host);
 scsi_remove_host(vhost->host);

 spin_lock_irqsave(vhost->host->host_lock, flags);
 ibmvfc_purge_requests(vhost, DID_ERROR);
 ibmvfc_free_event_pool(vhost);
 spin_unlock_irqrestore(vhost->host->host_lock, flags);

 ibmvfc_free_mem(vhost);
 spin_lock(&ibmvfc_driver_lock);
 list_del(&vhost->queue);
 spin_unlock(&ibmvfc_driver_lock);
 scsi_host_put(vhost->host);
 LEAVE;
 return 0;
}
