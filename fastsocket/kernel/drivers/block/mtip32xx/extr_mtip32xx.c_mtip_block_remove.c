
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct driver_data {int * queue; TYPE_2__* disk; int index; int dd_flag; scalar_t__ mtip_svc_handler; TYPE_1__* port; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_7__ {scalar_t__ queue; } ;
struct TYPE_6__ {int svc_wait; int flags; } ;


 int MTIP_DDF_INIT_DONE_BIT ;
 int MTIP_PF_SVC_THD_STOP_BIT ;
 int blk_cleanup_queue (int *) ;
 int del_gendisk (TYPE_2__*) ;
 TYPE_3__* disk_to_dev (TYPE_2__*) ;
 int ida_remove (int *,int ) ;
 struct kobject* kobject_get (int *) ;
 int kobject_put (struct kobject*) ;
 int kthread_stop (scalar_t__) ;
 int mtip_hw_debugfs_exit (struct driver_data*) ;
 int mtip_hw_exit (struct driver_data*) ;
 int mtip_hw_sysfs_exit (struct driver_data*,struct kobject*) ;
 int put_disk (TYPE_2__*) ;
 int rssd_index_ida ;
 int rssd_index_lock ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int mtip_block_remove(struct driver_data *dd)
{
 struct kobject *kobj;

 if (dd->mtip_svc_handler) {
  set_bit(MTIP_PF_SVC_THD_STOP_BIT, &dd->port->flags);
  wake_up_interruptible(&dd->port->svc_wait);
  kthread_stop(dd->mtip_svc_handler);
 }


 if (test_bit(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag)) {
  kobj = kobject_get(&disk_to_dev(dd->disk)->kobj);
  if (kobj) {
   mtip_hw_sysfs_exit(dd, kobj);
   kobject_put(kobj);
  }
 }
 mtip_hw_debugfs_exit(dd);





 if (dd->disk) {
  if (dd->disk->queue)
   del_gendisk(dd->disk);
  else
   put_disk(dd->disk);
 }

 spin_lock(&rssd_index_lock);
 ida_remove(&rssd_index_ida, dd->index);
 spin_unlock(&rssd_index_lock);

 blk_cleanup_queue(dd->queue);
 dd->disk = ((void*)0);
 dd->queue = ((void*)0);


 mtip_hw_exit(dd);

 return 0;
}
