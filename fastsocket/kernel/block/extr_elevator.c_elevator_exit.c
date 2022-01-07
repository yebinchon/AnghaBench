
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elevator_queue {int kobj; int sysfs_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* elevator_exit_fn ) (struct elevator_queue*) ;} ;


 int kobject_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct elevator_queue*) ;

void elevator_exit(struct elevator_queue *e)
{
 mutex_lock(&e->sysfs_lock);
 if (e->ops->elevator_exit_fn)
  e->ops->elevator_exit_fn(e);
 e->ops = ((void*)0);
 mutex_unlock(&e->sysfs_lock);

 kobject_put(&e->kobj);
}
