
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zcrypt_device {int online; TYPE_2__* ap_dev; int list; TYPE_1__* ops; int refcount; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_6__ {TYPE_3__ device; int qid; } ;
struct TYPE_5__ {scalar_t__ rng; } ;


 int DBF_INFO ;
 int ENODEV ;
 int ZCRYPT_DBF_DEV (int ,struct zcrypt_device*,char*,int ,int) ;
 int __zcrypt_increase_preference (struct zcrypt_device*) ;
 int get_device (TYPE_3__*) ;
 int kref_init (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int put_device (TYPE_3__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int zcrypt_device_attr_group ;
 int zcrypt_device_count ;
 int zcrypt_device_list ;
 int zcrypt_device_lock ;
 int zcrypt_device_put (struct zcrypt_device*) ;
 int zcrypt_rng_device_add () ;

int zcrypt_device_register(struct zcrypt_device *zdev)
{
 int rc;

 if (!zdev->ops)
  return -ENODEV;
 rc = sysfs_create_group(&zdev->ap_dev->device.kobj,
    &zcrypt_device_attr_group);
 if (rc)
  goto out;
 get_device(&zdev->ap_dev->device);
 kref_init(&zdev->refcount);
 spin_lock_bh(&zcrypt_device_lock);
 zdev->online = 1;
 ZCRYPT_DBF_DEV(DBF_INFO, zdev, "dev%04xo%dreg", zdev->ap_dev->qid,
         zdev->online);
 list_add_tail(&zdev->list, &zcrypt_device_list);
 __zcrypt_increase_preference(zdev);
 zcrypt_device_count++;
 spin_unlock_bh(&zcrypt_device_lock);
 if (zdev->ops->rng) {
  rc = zcrypt_rng_device_add();
  if (rc)
   goto out_unregister;
 }
 return 0;

out_unregister:
 spin_lock_bh(&zcrypt_device_lock);
 zcrypt_device_count--;
 list_del_init(&zdev->list);
 spin_unlock_bh(&zcrypt_device_lock);
 sysfs_remove_group(&zdev->ap_dev->device.kobj,
      &zcrypt_device_attr_group);
 put_device(&zdev->ap_dev->device);
 zcrypt_device_put(zdev);
out:
 return rc;
}
