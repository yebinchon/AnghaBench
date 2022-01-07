
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dev {int dev; } ;
struct ibmvscsi_host_data {int host; int work_thread; int queue; int pool; } ;
struct TYPE_2__ {int (* release_crq_queue ) (int *,struct ibmvscsi_host_data*,int ) ;} ;


 struct ibmvscsi_host_data* dev_get_drvdata (int *) ;
 TYPE_1__* ibmvscsi_ops ;
 int kthread_stop (int ) ;
 int max_events ;
 int release_event_pool (int *,struct ibmvscsi_host_data*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 int srp_remove_host (int ) ;
 int stub1 (int *,struct ibmvscsi_host_data*,int ) ;
 int unmap_persist_bufs (struct ibmvscsi_host_data*) ;

__attribute__((used)) static int ibmvscsi_remove(struct vio_dev *vdev)
{
 struct ibmvscsi_host_data *hostdata = dev_get_drvdata(&vdev->dev);
 unmap_persist_bufs(hostdata);
 release_event_pool(&hostdata->pool, hostdata);
 ibmvscsi_ops->release_crq_queue(&hostdata->queue, hostdata,
     max_events);

 kthread_stop(hostdata->work_thread);
 srp_remove_host(hostdata->host);
 scsi_remove_host(hostdata->host);
 scsi_host_put(hostdata->host);

 return 0;
}
