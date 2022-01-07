
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int kobj; scalar_t__ request_fn; } ;
struct gendisk {struct request_queue* queue; } ;
struct TYPE_3__ {int kobj; } ;


 int KOBJ_REMOVE ;
 scalar_t__ WARN_ON (int) ;
 int blk_trace_remove_sysfs (TYPE_1__*) ;
 TYPE_1__* disk_to_dev (struct gendisk*) ;
 int elv_unregister_queue (struct request_queue*) ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;

void blk_unregister_queue(struct gendisk *disk)
{
 struct request_queue *q = disk->queue;

 if (WARN_ON(!q))
  return;

 if (q->request_fn)
  elv_unregister_queue(q);

 kobject_uevent(&q->kobj, KOBJ_REMOVE);
 kobject_del(&q->kobj);
 blk_trace_remove_sysfs(disk_to_dev(disk));
 kobject_put(&disk_to_dev(disk)->kobj);
}
