
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct device {int kobj; int release; struct device* parent; struct class* class; int devt; } ;
struct class {int dummy; } ;
typedef int dev_t ;


 int ENODEV ;
 int ENOMEM ;
 struct device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct class*) ;
 int dev_set_drvdata (struct device*,void*) ;
 int device_create_release ;
 int device_register (struct device*) ;
 int kobject_set_name_vargs (int *,char const*,int ) ;
 struct device* kzalloc (int,int ) ;
 int put_device (struct device*) ;

struct device *device_create_vargs(struct class *class, struct device *parent,
       dev_t devt, void *drvdata, const char *fmt,
       va_list args)
{
 struct device *dev = ((void*)0);
 int retval = -ENODEV;

 if (class == ((void*)0) || IS_ERR(class))
  goto error;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  retval = -ENOMEM;
  goto error;
 }

 dev->devt = devt;
 dev->class = class;
 dev->parent = parent;
 dev->release = device_create_release;
 dev_set_drvdata(dev, drvdata);

 retval = kobject_set_name_vargs(&dev->kobj, fmt, args);
 if (retval)
  goto error;

 retval = device_register(dev);
 if (retval)
  goto error;

 return dev;

error:
 put_device(dev);
 return ERR_PTR(retval);
}
