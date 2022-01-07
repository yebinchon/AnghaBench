
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int * class; struct TYPE_7__* parent; } ;
struct scsi_disk {int previous_state; TYPE_1__ dev; scalar_t__ openers; int index; struct gendisk* disk; int * driver; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; TYPE_1__ sdev_gendev; TYPE_6__* request_queue; } ;
struct gendisk {int disk_name; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int rq_timeout; } ;


 int DISK_NAME_LEN ;
 int EAGAIN ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_INFO ;
 int SCSI_LOG_HLQUEUE (int,int ) ;
 int SD_MINORS ;
 int SD_MOD_TIMEOUT ;
 int SD_TIMEOUT ;
 scalar_t__ TYPE_DISK ;
 scalar_t__ TYPE_MOD ;
 scalar_t__ TYPE_RBC ;
 struct gendisk* alloc_disk (int ) ;
 int async_schedule_domain (int ,struct scsi_disk*,int *) ;
 int blk_queue_rq_timeout (TYPE_6__*,int ) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_name (TYPE_1__*,int ) ;
 scalar_t__ device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int get_device (TYPE_1__*) ;
 int ida_get_new (int *,int *) ;
 int ida_pre_get (int *,int ) ;
 int ida_remove (int *,int ) ;
 int kfree (struct scsi_disk*) ;
 struct scsi_disk* kzalloc (int,int ) ;
 int put_disk (struct gendisk*) ;
 int scsi_sd_probe_domain ;
 int sd_disk_class ;
 int sd_format_disk_name (char*,int ,int ,int ) ;
 int sd_index_ida ;
 int sd_index_lock ;
 int sd_probe_async ;
 int sd_template ;
 int sdev_printk (int ,struct scsi_device*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int sd_probe(struct device *dev)
{
 struct scsi_device *sdp = to_scsi_device(dev);
 struct scsi_disk *sdkp;
 struct gendisk *gd;
 u32 index;
 int error;

 error = -ENODEV;
 if (sdp->type != TYPE_DISK && sdp->type != TYPE_MOD && sdp->type != TYPE_RBC)
  goto out;

 SCSI_LOG_HLQUEUE(3, sdev_printk(KERN_INFO, sdp,
     "sd_attach\n"));

 error = -ENOMEM;
 sdkp = kzalloc(sizeof(*sdkp), GFP_KERNEL);
 if (!sdkp)
  goto out;

 gd = alloc_disk(SD_MINORS);
 if (!gd)
  goto out_free;

 do {
  if (!ida_pre_get(&sd_index_ida, GFP_KERNEL))
   goto out_put;

  spin_lock(&sd_index_lock);
  error = ida_get_new(&sd_index_ida, &index);
  spin_unlock(&sd_index_lock);
 } while (error == -EAGAIN);

 if (error)
  goto out_put;

 error = sd_format_disk_name("sd", index, gd->disk_name, DISK_NAME_LEN);
 if (error)
  goto out_free_index;

 sdkp->device = sdp;
 sdkp->driver = &sd_template;
 sdkp->disk = gd;
 sdkp->index = index;
 sdkp->openers = 0;
 sdkp->previous_state = 1;

 if (!sdp->request_queue->rq_timeout) {
  if (sdp->type != TYPE_MOD)
   blk_queue_rq_timeout(sdp->request_queue, SD_TIMEOUT);
  else
   blk_queue_rq_timeout(sdp->request_queue,
          SD_MOD_TIMEOUT);
 }

 device_initialize(&sdkp->dev);
 sdkp->dev.parent = &sdp->sdev_gendev;
 sdkp->dev.class = &sd_disk_class;
 dev_set_name(&sdkp->dev, dev_name(&sdp->sdev_gendev));

 if (device_add(&sdkp->dev))
  goto out_free_index;

 get_device(&sdp->sdev_gendev);

 get_device(&sdkp->dev);
 async_schedule_domain(sd_probe_async, sdkp, &scsi_sd_probe_domain);

 return 0;

 out_free_index:
 spin_lock(&sd_index_lock);
 ida_remove(&sd_index_ida, index);
 spin_unlock(&sd_index_lock);
 out_put:
 put_disk(gd);
 out_free:
 kfree(sdkp);
 out:
 return error;
}
