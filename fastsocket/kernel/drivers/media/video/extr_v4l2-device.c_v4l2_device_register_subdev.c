
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int list; struct v4l2_device* v4l2_dev; int ctrl_handler; int owner; int * name; } ;
struct v4l2_device {int lock; int subdevs; int ctrl_handler; } ;


 int EINVAL ;
 int ENODEV ;
 int WARN_ON (int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;
 int v4l2_ctrl_add_handler (int ,int ) ;

int v4l2_device_register_subdev(struct v4l2_device *v4l2_dev,
      struct v4l2_subdev *sd)
{
 int err;


 if (v4l2_dev == ((void*)0) || sd == ((void*)0) || !sd->name[0])
  return -EINVAL;

 WARN_ON(sd->v4l2_dev != ((void*)0));
 if (!try_module_get(sd->owner))
  return -ENODEV;

 err = v4l2_ctrl_add_handler(v4l2_dev->ctrl_handler, sd->ctrl_handler);
 if (err)
  return err;
 sd->v4l2_dev = v4l2_dev;
 spin_lock(&v4l2_dev->lock);
 list_add_tail(&sd->list, &v4l2_dev->subdevs);
 spin_unlock(&v4l2_dev->lock);
 return 0;
}
