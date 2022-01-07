
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int owner; TYPE_1__* v4l2_dev; int list; } ;
struct TYPE_2__ {int lock; } ;


 int list_del (int *) ;
 int module_put (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void v4l2_device_unregister_subdev(struct v4l2_subdev *sd)
{

 if (sd == ((void*)0) || sd->v4l2_dev == ((void*)0))
  return;
 spin_lock(&sd->v4l2_dev->lock);
 list_del(&sd->list);
 spin_unlock(&sd->v4l2_dev->lock);
 sd->v4l2_dev = ((void*)0);
 module_put(sd->owner);
}
