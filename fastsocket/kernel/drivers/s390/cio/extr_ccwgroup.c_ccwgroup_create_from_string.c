
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_15__ {int release; struct device* parent; int * bus; } ;
struct ccwgroup_device {unsigned int creator_id; int count; TYPE_2__ dev; int reg_mutex; TYPE_4__** cdev; int onoff; } ;
struct ccw_driver {int dummy; } ;
struct TYPE_14__ {scalar_t__ driver_info; } ;
struct TYPE_16__ {TYPE_2__ dev; int ccwlock; TYPE_1__ id; } ;


 int CCW_BUS_ID_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __ccwgroup_create_symlinks (struct ccwgroup_device*) ;
 int __get_next_bus_id (char const**,char*) ;
 int __is_valid_bus_id (char*) ;
 int atomic_set (int *,int ) ;
 int ccwgroup_bus_type ;
 int ccwgroup_release ;
 int dev_attr_ungroup ;
 struct ccwgroup_device* dev_get_drvdata (TYPE_2__*) ;
 int dev_name (TYPE_2__*) ;
 int dev_set_drvdata (TYPE_2__*,struct ccwgroup_device*) ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_add (TYPE_2__*) ;
 int device_create_file (TYPE_2__*,int *) ;
 int device_initialize (TYPE_2__*) ;
 int device_remove_file (TYPE_2__*,int *) ;
 int device_unregister (TYPE_2__*) ;
 TYPE_4__* get_ccwdev_by_busid (struct ccw_driver*,char*) ;
 int get_device (TYPE_2__*) ;
 struct ccwgroup_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_2__*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 scalar_t__ strlen (char const*) ;

int ccwgroup_create_from_string(struct device *root, unsigned int creator_id,
    struct ccw_driver *cdrv, int num_devices,
    const char *buf)
{
 struct ccwgroup_device *gdev;
 int rc, i;
 char tmp_bus_id[CCW_BUS_ID_SIZE];
 const char *curr_buf;

 gdev = kzalloc(sizeof(*gdev) + num_devices * sizeof(gdev->cdev[0]),
         GFP_KERNEL);
 if (!gdev)
  return -ENOMEM;

 atomic_set(&gdev->onoff, 0);
 mutex_init(&gdev->reg_mutex);
 mutex_lock(&gdev->reg_mutex);
 gdev->creator_id = creator_id;
 gdev->count = num_devices;
 gdev->dev.bus = &ccwgroup_bus_type;
 gdev->dev.parent = root;
 gdev->dev.release = ccwgroup_release;
 device_initialize(&gdev->dev);

 curr_buf = buf;
 for (i = 0; i < num_devices && curr_buf; i++) {
  rc = __get_next_bus_id(&curr_buf, tmp_bus_id);
  if (rc != 0)
   goto error;
  if (!__is_valid_bus_id(tmp_bus_id)) {
   rc = -EINVAL;
   goto error;
  }
  gdev->cdev[i] = get_ccwdev_by_busid(cdrv, tmp_bus_id);




  if (!gdev->cdev[i]
      || gdev->cdev[i]->id.driver_info !=
      gdev->cdev[0]->id.driver_info) {
   rc = -EINVAL;
   goto error;
  }

  spin_lock_irq(gdev->cdev[i]->ccwlock);
  if (dev_get_drvdata(&gdev->cdev[i]->dev)) {
   spin_unlock_irq(gdev->cdev[i]->ccwlock);
   rc = -EINVAL;
   goto error;
  }
  dev_set_drvdata(&gdev->cdev[i]->dev, gdev);
  spin_unlock_irq(gdev->cdev[i]->ccwlock);
 }

 if (i < num_devices && !curr_buf) {
  rc = -EINVAL;
  goto error;
 }

 if (i == num_devices && strlen(curr_buf) > 0) {
  rc = -EINVAL;
  goto error;
 }

 dev_set_name(&gdev->dev, "%s", dev_name(&gdev->cdev[0]->dev));

 rc = device_add(&gdev->dev);
 if (rc)
  goto error;
 get_device(&gdev->dev);
 rc = device_create_file(&gdev->dev, &dev_attr_ungroup);

 if (rc) {
  device_unregister(&gdev->dev);
  goto error;
 }

 rc = __ccwgroup_create_symlinks(gdev);
 if (!rc) {
  mutex_unlock(&gdev->reg_mutex);
  put_device(&gdev->dev);
  return 0;
 }
 device_remove_file(&gdev->dev, &dev_attr_ungroup);
 device_unregister(&gdev->dev);
error:
 for (i = 0; i < num_devices; i++)
  if (gdev->cdev[i]) {
   spin_lock_irq(gdev->cdev[i]->ccwlock);
   if (dev_get_drvdata(&gdev->cdev[i]->dev) == gdev)
    dev_set_drvdata(&gdev->cdev[i]->dev, ((void*)0));
   spin_unlock_irq(gdev->cdev[i]->ccwlock);
   put_device(&gdev->cdev[i]->dev);
   gdev->cdev[i] = ((void*)0);
  }
 mutex_unlock(&gdev->reg_mutex);
 put_device(&gdev->dev);
 return rc;
}
