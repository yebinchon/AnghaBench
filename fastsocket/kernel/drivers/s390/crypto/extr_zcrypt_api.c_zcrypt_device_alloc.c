
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t length; int message; } ;
struct zcrypt_device {int dbf_area; int list; int lock; TYPE_1__ reply; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct zcrypt_device*) ;
 int kmalloc (size_t,int ) ;
 struct zcrypt_device* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int zcrypt_dbf_devices ;

struct zcrypt_device *zcrypt_device_alloc(size_t max_response_size)
{
 struct zcrypt_device *zdev;

 zdev = kzalloc(sizeof(struct zcrypt_device), GFP_KERNEL);
 if (!zdev)
  return ((void*)0);
 zdev->reply.message = kmalloc(max_response_size, GFP_KERNEL);
 if (!zdev->reply.message)
  goto out_free;
 zdev->reply.length = max_response_size;
 spin_lock_init(&zdev->lock);
 INIT_LIST_HEAD(&zdev->list);
 zdev->dbf_area = zcrypt_dbf_devices;
 return zdev;

out_free:
 kfree(zdev);
 return ((void*)0);
}
