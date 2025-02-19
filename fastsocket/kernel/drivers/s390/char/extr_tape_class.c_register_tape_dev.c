
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tape_class_device {char* device_name; char* mode_name; TYPE_2__* char_device; TYPE_1__* class_device; } ;
struct file_operations {int owner; } ;
struct device {int kobj; } ;
typedef int dev_t ;
struct TYPE_8__ {int dev; struct file_operations const* ops; int owner; } ;
struct TYPE_7__ {int kobj; } ;


 int ENOMEM ;
 struct tape_class_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int TAPECLASS_NAME_LEN ;
 int cdev_add (TYPE_2__*,int ,int) ;
 TYPE_2__* cdev_alloc () ;
 int cdev_del (TYPE_2__*) ;
 TYPE_1__* device_create (int ,struct device*,int ,int *,char*,char*) ;
 int device_destroy (int ,int ) ;
 int kfree (struct tape_class_device*) ;
 struct tape_class_device* kzalloc (int,int ) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int ) ;
 int sysfs_create_link (int *,int *,char*) ;
 int tape_class ;

struct tape_class_device *register_tape_dev(
 struct device * device,
 dev_t dev,
 const struct file_operations *fops,
 char * device_name,
 char * mode_name)
{
 struct tape_class_device * tcd;
 int rc;
 char * s;

 tcd = kzalloc(sizeof(struct tape_class_device), GFP_KERNEL);
 if (!tcd)
  return ERR_PTR(-ENOMEM);

 strncpy(tcd->device_name, device_name, TAPECLASS_NAME_LEN);
 for (s = strchr(tcd->device_name, '/'); s; s = strchr(s, '/'))
  *s = '!';
 strncpy(tcd->mode_name, mode_name, TAPECLASS_NAME_LEN);
 for (s = strchr(tcd->mode_name, '/'); s; s = strchr(s, '/'))
  *s = '!';

 tcd->char_device = cdev_alloc();
 if (!tcd->char_device) {
  rc = -ENOMEM;
  goto fail_with_tcd;
 }

 tcd->char_device->owner = fops->owner;
 tcd->char_device->ops = fops;
 tcd->char_device->dev = dev;

 rc = cdev_add(tcd->char_device, tcd->char_device->dev, 1);
 if (rc)
  goto fail_with_cdev;

 tcd->class_device = device_create(tape_class, device,
       tcd->char_device->dev, ((void*)0),
       "%s", tcd->device_name);
 rc = IS_ERR(tcd->class_device) ? PTR_ERR(tcd->class_device) : 0;
 if (rc)
  goto fail_with_cdev;
 rc = sysfs_create_link(
  &device->kobj,
  &tcd->class_device->kobj,
  tcd->mode_name
 );
 if (rc)
  goto fail_with_class_device;

 return tcd;

fail_with_class_device:
 device_destroy(tape_class, tcd->char_device->dev);

fail_with_cdev:
 cdev_del(tcd->char_device);

fail_with_tcd:
 kfree(tcd);

 return ERR_PTR(rc);
}
