
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gendisk {int flags; TYPE_3__* queue; scalar_t__ minors; scalar_t__ first_minor; scalar_t__ major; int part0; } ;
struct backing_dev_info {TYPE_1__* dev; } ;
typedef int dev_t ;
struct TYPE_6__ {struct backing_dev_info backing_dev_info; } ;
struct TYPE_5__ {int kobj; int devt; } ;
struct TYPE_4__ {int kobj; } ;


 int GENHD_FL_EXT_DEVT ;
 int GENHD_FL_UP ;
 scalar_t__ MAJOR (int ) ;
 scalar_t__ MINOR (int ) ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int ) ;
 int bdi_register_dev (struct backing_dev_info*,int ) ;
 int blk_alloc_devt (int *,int *) ;
 int blk_get_queue (TYPE_3__*) ;
 int blk_register_queue (struct gendisk*) ;
 int blk_register_region (int ,scalar_t__,int *,int ,int ,struct gendisk*) ;
 int disk_devt (struct gendisk*) ;
 TYPE_2__* disk_to_dev (struct gendisk*) ;
 int exact_lock ;
 int exact_match ;
 int register_disk (struct gendisk*) ;
 int sysfs_create_link (int *,int *,char*) ;

void add_disk(struct gendisk *disk)
{
 struct backing_dev_info *bdi;
 dev_t devt;
 int retval;





 WARN_ON(disk->minors && !(disk->major || disk->first_minor));
 WARN_ON(!disk->minors && !(disk->flags & GENHD_FL_EXT_DEVT));

 disk->flags |= GENHD_FL_UP;

 retval = blk_alloc_devt(&disk->part0, &devt);
 if (retval) {
  WARN_ON(1);
  return;
 }
 disk_to_dev(disk)->devt = devt;




 disk->major = MAJOR(devt);
 disk->first_minor = MINOR(devt);


 bdi = &disk->queue->backing_dev_info;
 bdi_register_dev(bdi, disk_devt(disk));

 blk_register_region(disk_devt(disk), disk->minors, ((void*)0),
       exact_match, exact_lock, disk);
 register_disk(disk);
 blk_register_queue(disk);





 WARN_ON_ONCE(blk_get_queue(disk->queue));

 retval = sysfs_create_link(&disk_to_dev(disk)->kobj, &bdi->dev->kobj,
       "bdi");
 WARN_ON(retval);
}
