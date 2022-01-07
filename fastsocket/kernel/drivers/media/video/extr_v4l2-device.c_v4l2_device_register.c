
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_device {int * name; struct device* dev; int ioctl_lock; int lock; int subdevs; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {char* name; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 scalar_t__ dev_get_drvdata (struct device*) ;
 char* dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct v4l2_device*) ;
 int mutex_init (int *) ;
 int snprintf (int *,int,char*,char*,char*) ;
 int spin_lock_init (int *) ;
 int v4l2_warn (struct v4l2_device*,char*) ;

int v4l2_device_register(struct device *dev, struct v4l2_device *v4l2_dev)
{
 if (v4l2_dev == ((void*)0))
  return -EINVAL;

 INIT_LIST_HEAD(&v4l2_dev->subdevs);
 spin_lock_init(&v4l2_dev->lock);
 mutex_init(&v4l2_dev->ioctl_lock);
 v4l2_dev->dev = dev;
 if (dev == ((void*)0)) {

  WARN_ON(!v4l2_dev->name[0]);
  return 0;
 }


 if (!v4l2_dev->name[0])
  snprintf(v4l2_dev->name, sizeof(v4l2_dev->name), "%s %s",
   dev->driver->name, dev_name(dev));
 if (dev_get_drvdata(dev))
  v4l2_warn(v4l2_dev, "Non-NULL drvdata on register\n");
 dev_set_drvdata(dev, v4l2_dev);
 return 0;
}
