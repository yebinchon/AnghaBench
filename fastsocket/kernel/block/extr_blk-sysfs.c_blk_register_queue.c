
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int kobj; int request_fn; } ;
struct gendisk {struct request_queue* queue; } ;
struct device {int kobj; } ;


 int ENXIO ;
 int KOBJ_ADD ;
 int KOBJ_REMOVE ;
 scalar_t__ WARN_ON (int) ;
 int blk_trace_init_sysfs (struct device*) ;
 int blk_trace_remove_sysfs (struct device*) ;
 struct device* disk_to_dev (struct gendisk*) ;
 int elv_register_queue (struct request_queue*) ;
 int kobject_add (int *,int ,char*,char*) ;
 int kobject_del (int *) ;
 int kobject_get (int *) ;
 int kobject_uevent (int *,int ) ;

int blk_register_queue(struct gendisk *disk)
{
 int ret;
 struct device *dev = disk_to_dev(disk);

 struct request_queue *q = disk->queue;

 if (WARN_ON(!q))
  return -ENXIO;

 ret = blk_trace_init_sysfs(dev);
 if (ret)
  return ret;

 ret = kobject_add(&q->kobj, kobject_get(&dev->kobj), "%s", "queue");
 if (ret < 0)
  return ret;

 kobject_uevent(&q->kobj, KOBJ_ADD);

 if (!q->request_fn)
  return 0;

 ret = elv_register_queue(q);
 if (ret) {
  kobject_uevent(&q->kobj, KOBJ_REMOVE);
  kobject_del(&q->kobj);
  blk_trace_remove_sysfs(disk_to_dev(disk));
  return ret;
 }

 return 0;
}
