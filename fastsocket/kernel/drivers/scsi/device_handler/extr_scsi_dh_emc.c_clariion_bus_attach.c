
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_dh_data {scalar_t__ buf; int * scsi_dh; } ;
struct scsi_device {TYPE_1__* request_queue; struct scsi_dh_data* scsi_dh_data; } ;
struct clariion_dh_data {size_t lun_state; void* default_sp; int port; void* current_sp; } ;
struct TYPE_2__ {int queue_lock; } ;


 size_t CLARIION_LUN_UNINITIALIZED ;
 int CLARIION_NAME ;
 void* CLARIION_UNBOUND_LU ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int SCSI_DH_OK ;
 int THIS_MODULE ;
 int clariion_dh ;
 int clariion_send_inquiry (struct scsi_device*,struct clariion_dh_data*) ;
 int clariion_std_inquiry (struct scsi_device*,struct clariion_dh_data*) ;
 int kfree (struct scsi_dh_data*) ;
 struct scsi_dh_data* kzalloc (int,int ) ;
 int * lun_state ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,...) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int try_module_get (int ) ;

__attribute__((used)) static int clariion_bus_attach(struct scsi_device *sdev)
{
 struct scsi_dh_data *scsi_dh_data;
 struct clariion_dh_data *h;
 unsigned long flags;
 int err;

 scsi_dh_data = kzalloc(sizeof(*scsi_dh_data)
          + sizeof(*h) , GFP_KERNEL);
 if (!scsi_dh_data) {
  sdev_printk(KERN_ERR, sdev, "%s: Attach failed\n",
       CLARIION_NAME);
  return -ENOMEM;
 }

 scsi_dh_data->scsi_dh = &clariion_dh;
 h = (struct clariion_dh_data *) scsi_dh_data->buf;
 h->lun_state = CLARIION_LUN_UNINITIALIZED;
 h->default_sp = CLARIION_UNBOUND_LU;
 h->current_sp = CLARIION_UNBOUND_LU;

 err = clariion_std_inquiry(sdev, h);
 if (err != SCSI_DH_OK)
  goto failed;

 err = clariion_send_inquiry(sdev, h);
 if (err != SCSI_DH_OK)
  goto failed;

 if (!try_module_get(THIS_MODULE))
  goto failed;

 spin_lock_irqsave(sdev->request_queue->queue_lock, flags);
 sdev->scsi_dh_data = scsi_dh_data;
 spin_unlock_irqrestore(sdev->request_queue->queue_lock, flags);

 sdev_printk(KERN_INFO, sdev,
      "%s: connected to SP %c Port %d (%s, default SP %c)\n",
      CLARIION_NAME, h->current_sp + 'A',
      h->port, lun_state[h->lun_state],
      h->default_sp + 'A');

 return 0;

failed:
 kfree(scsi_dh_data);
 sdev_printk(KERN_ERR, sdev, "%s: not attached\n",
      CLARIION_NAME);
 return -EINVAL;
}
