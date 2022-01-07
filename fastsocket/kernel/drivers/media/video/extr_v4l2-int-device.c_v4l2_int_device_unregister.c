
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* slave; } ;
struct v4l2_int_device {scalar_t__ type; TYPE_4__ u; int head; } ;
struct TYPE_7__ {TYPE_1__* master; } ;
struct TYPE_10__ {int module; TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_5__* master; } ;
struct TYPE_6__ {int (* detach ) (struct v4l2_int_device*) ;} ;


 int list_del (int *) ;
 int module_put (int ) ;
 int mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct v4l2_int_device*) ;
 scalar_t__ v4l2_int_type_slave ;

void v4l2_int_device_unregister(struct v4l2_int_device *d)
{
 mutex_lock(&mutex);
 list_del(&d->head);
 if (d->type == v4l2_int_type_slave
     && d->u.slave->master != ((void*)0)) {
  d->u.slave->master->u.master->detach(d);
  module_put(d->u.slave->master->module);
  d->u.slave->master = ((void*)0);
 }
 mutex_unlock(&mutex);
}
