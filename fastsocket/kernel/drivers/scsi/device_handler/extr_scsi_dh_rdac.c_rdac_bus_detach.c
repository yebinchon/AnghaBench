
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_dh_data {scalar_t__ buf; } ;
struct scsi_device {TYPE_1__* request_queue; struct scsi_dh_data* scsi_dh_data; } ;
struct rdac_dh_data {TYPE_2__* ctlr; } ;
struct TYPE_4__ {int kref; scalar_t__ ms_queued; } ;
struct TYPE_3__ {int queue_lock; } ;


 int KERN_NOTICE ;
 int RDAC_NAME ;
 int THIS_MODULE ;
 int flush_workqueue (int ) ;
 int kfree (struct scsi_dh_data*) ;
 int kmpath_rdacd ;
 int kref_put (int *,int ) ;
 int list_lock ;
 int module_put (int ) ;
 int release_controller ;
 int sdev_printk (int ,struct scsi_device*,char*,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void rdac_bus_detach( struct scsi_device *sdev )
{
 struct scsi_dh_data *scsi_dh_data;
 struct rdac_dh_data *h;
 unsigned long flags;

 scsi_dh_data = sdev->scsi_dh_data;
 h = (struct rdac_dh_data *) scsi_dh_data->buf;
 if (h->ctlr && h->ctlr->ms_queued)
  flush_workqueue(kmpath_rdacd);

 spin_lock_irqsave(sdev->request_queue->queue_lock, flags);
 sdev->scsi_dh_data = ((void*)0);
 spin_unlock_irqrestore(sdev->request_queue->queue_lock, flags);

 spin_lock(&list_lock);
 if (h->ctlr)
  kref_put(&h->ctlr->kref, release_controller);
 spin_unlock(&list_lock);
 kfree(scsi_dh_data);
 module_put(THIS_MODULE);
 sdev_printk(KERN_NOTICE, sdev, "%s: Detached\n", RDAC_NAME);
}
