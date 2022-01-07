
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_class_device {int ref; int * class_dev; int minor; } ;
struct request_queue {int kobj; struct bsg_class_device bsg_dev; } ;


 int bsg_kref_release_function ;
 int bsg_minor_idr ;
 int bsg_mutex ;
 int device_unregister (int *) ;
 int idr_remove (int *,int ) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_remove_link (int *,char*) ;

void bsg_unregister_queue(struct request_queue *q)
{
 struct bsg_class_device *bcd = &q->bsg_dev;

 if (!bcd->class_dev)
  return;

 mutex_lock(&bsg_mutex);
 idr_remove(&bsg_minor_idr, bcd->minor);
 sysfs_remove_link(&q->kobj, "bsg");
 device_unregister(bcd->class_dev);
 bcd->class_dev = ((void*)0);
 kref_put(&bcd->ref, bsg_kref_release_function);
 mutex_unlock(&bsg_mutex);
}
