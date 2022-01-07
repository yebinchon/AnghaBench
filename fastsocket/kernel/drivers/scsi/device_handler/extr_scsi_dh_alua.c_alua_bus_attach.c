
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_dh_data {scalar_t__ buf; int * scsi_dh; } ;
struct scsi_device {TYPE_1__* request_queue; struct scsi_dh_data* scsi_dh_data; } ;
struct alua_dh_data {int group_id; int rel_port; struct scsi_device* sdev; int bufflen; int inq; int buff; int state; int tpgs; } ;
struct TYPE_2__ {int queue_lock; } ;


 int ALUA_DH_NAME ;
 int ALUA_INQUIRY_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_NOTICE ;
 int SCSI_DH_DEV_OFFLINED ;
 int SCSI_DH_OK ;
 int THIS_MODULE ;
 int TPGS_MODE_UNINITIALIZED ;
 int TPGS_STATE_OPTIMIZED ;
 int alua_dh ;
 int alua_initialize (struct scsi_device*,struct alua_dh_data*) ;
 int kfree (struct scsi_dh_data*) ;
 struct scsi_dh_data* kzalloc (int,int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int try_module_get (int ) ;

__attribute__((used)) static int alua_bus_attach(struct scsi_device *sdev)
{
 struct scsi_dh_data *scsi_dh_data;
 struct alua_dh_data *h;
 unsigned long flags;
 int err = SCSI_DH_OK;

 scsi_dh_data = kzalloc(sizeof(*scsi_dh_data)
          + sizeof(*h) , GFP_KERNEL);
 if (!scsi_dh_data) {
  sdev_printk(KERN_ERR, sdev, "%s: Attach failed\n",
       ALUA_DH_NAME);
  return -ENOMEM;
 }

 scsi_dh_data->scsi_dh = &alua_dh;
 h = (struct alua_dh_data *) scsi_dh_data->buf;
 h->tpgs = TPGS_MODE_UNINITIALIZED;
 h->state = TPGS_STATE_OPTIMIZED;
 h->group_id = -1;
 h->rel_port = -1;
 h->buff = h->inq;
 h->bufflen = ALUA_INQUIRY_SIZE;
 h->sdev = sdev;

 err = alua_initialize(sdev, h);
 if ((err != SCSI_DH_OK) && (err != SCSI_DH_DEV_OFFLINED))
  goto failed;

 if (!try_module_get(THIS_MODULE))
  goto failed;

 spin_lock_irqsave(sdev->request_queue->queue_lock, flags);
 sdev->scsi_dh_data = scsi_dh_data;
 spin_unlock_irqrestore(sdev->request_queue->queue_lock, flags);
 sdev_printk(KERN_NOTICE, sdev, "%s: Attached\n", ALUA_DH_NAME);

 return 0;

failed:
 kfree(scsi_dh_data);
 sdev_printk(KERN_ERR, sdev, "%s: not attached\n", ALUA_DH_NAME);
 return -EINVAL;
}
