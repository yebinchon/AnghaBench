
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zcrypt_device {TYPE_2__* ap_dev; int list; TYPE_1__* ops; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_5__ {TYPE_3__ device; } ;
struct TYPE_4__ {scalar_t__ rng; } ;


 int list_del_init (int *) ;
 int put_device (TYPE_3__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int zcrypt_device_attr_group ;
 int zcrypt_device_count ;
 int zcrypt_device_lock ;
 int zcrypt_device_put (struct zcrypt_device*) ;
 int zcrypt_rng_device_remove () ;

void zcrypt_device_unregister(struct zcrypt_device *zdev)
{
 if (zdev->ops->rng)
  zcrypt_rng_device_remove();
 spin_lock_bh(&zcrypt_device_lock);
 zcrypt_device_count--;
 list_del_init(&zdev->list);
 spin_unlock_bh(&zcrypt_device_lock);
 sysfs_remove_group(&zdev->ap_dev->device.kobj,
      &zcrypt_device_attr_group);
 put_device(&zdev->ap_dev->device);
 zcrypt_device_put(zdev);
}
