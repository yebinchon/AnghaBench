
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct scm_device {int size; int dev; int nr_max_block; } ;
struct scm_blk_dev {TYPE_1__* gendisk; struct request_queue* rq; int rq_lock; int tasklet; int queued_reqs; int finished_requests; int lock; int state; struct scm_device* scmdev; } ;
struct request_queue {struct scm_device* queuedata; int unplug_delay; } ;
struct aidaw {int dummy; } ;
struct TYPE_4__ {unsigned int first_minor; scalar_t__ disk_name; int major; struct request_queue* queue; int * fops; struct scm_device* private_data; int * driverfs_dev; } ;


 scalar_t__ DISK_NAME_LEN ;
 int ENODEV ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int QUEUE_FLAG_NONROT ;
 unsigned int SCM_NR_PARTS ;
 int SCM_OPER ;
 int SCM_QUEUE_DELAY ;
 int add_disk (TYPE_1__*) ;
 TYPE_1__* alloc_disk (unsigned int) ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int ) ;
 int blk_cleanup_queue (struct request_queue*) ;
 struct request_queue* blk_init_queue (int ,int *) ;
 int blk_queue_logical_block_size (struct request_queue*,int) ;
 int blk_queue_max_hw_sectors (struct request_queue*,unsigned int) ;
 int blk_queue_max_segments (struct request_queue*,unsigned int) ;
 unsigned int min (int ,unsigned int) ;
 int msecs_to_jiffies (int ) ;
 int nr_devices ;
 int queue_flag_set_unlocked (int ,struct request_queue*) ;
 int scm_blk_dev_cluster_setup (struct scm_blk_dev*) ;
 int scm_blk_devops ;
 int scm_blk_request ;
 scalar_t__ scm_blk_tasklet ;
 int scm_major ;
 int set_capacity (TYPE_1__*,int) ;
 int snprintf (scalar_t__,scalar_t__,char*,...) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

int scm_blk_dev_setup(struct scm_blk_dev *bdev, struct scm_device *scmdev)
{
 struct request_queue *rq;
 int len, ret = -ENOMEM;
 unsigned int devindex, nr_max_blk;

 devindex = atomic_inc_return(&nr_devices) - 1;

 if (devindex > 701) {
  ret = -ENODEV;
  goto out;
 }

 bdev->scmdev = scmdev;
 bdev->state = SCM_OPER;
 spin_lock_init(&bdev->rq_lock);
 spin_lock_init(&bdev->lock);
 INIT_LIST_HEAD(&bdev->finished_requests);
 atomic_set(&bdev->queued_reqs, 0);
 tasklet_init(&bdev->tasklet,
       (void (*)(unsigned long)) scm_blk_tasklet,
       (unsigned long) bdev);

 rq = blk_init_queue(scm_blk_request, &bdev->rq_lock);
 if (!rq)
  goto out;

 bdev->rq = rq;
 nr_max_blk = min(scmdev->nr_max_block,
    (unsigned int) (PAGE_SIZE / sizeof(struct aidaw)));

 blk_queue_logical_block_size(rq, 1 << 12);
 blk_queue_max_hw_sectors(rq, nr_max_blk << 3);
 blk_queue_max_segments(rq, nr_max_blk);
 rq->unplug_delay = msecs_to_jiffies(SCM_QUEUE_DELAY);
 queue_flag_set_unlocked(QUEUE_FLAG_NONROT, rq);
 scm_blk_dev_cluster_setup(bdev);

 bdev->gendisk = alloc_disk(SCM_NR_PARTS);
 if (!bdev->gendisk)
  goto out_queue;

 rq->queuedata = scmdev;
 bdev->gendisk->driverfs_dev = &scmdev->dev;
 bdev->gendisk->private_data = scmdev;
 bdev->gendisk->fops = &scm_blk_devops;
 bdev->gendisk->queue = rq;
 bdev->gendisk->major = scm_major;
 bdev->gendisk->first_minor = devindex * SCM_NR_PARTS;

 len = snprintf(bdev->gendisk->disk_name, DISK_NAME_LEN, "scm");
 if (devindex > 25) {
  len += snprintf(bdev->gendisk->disk_name + len,
    DISK_NAME_LEN - len, "%c",
    'a' + (devindex / 26) - 1);
  devindex = devindex % 26;
 }
 snprintf(bdev->gendisk->disk_name + len, DISK_NAME_LEN - len, "%c",
   'a' + devindex);


 set_capacity(bdev->gendisk, scmdev->size >> 9);
 add_disk(bdev->gendisk);
 return 0;

out_queue:
 blk_cleanup_queue(rq);
out:
 atomic_dec(&nr_devices);
 return ret;
}
