
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_device {int refcount; } ;


 int kref_put (int *,int ) ;
 int zcrypt_device_release ;

int zcrypt_device_put(struct zcrypt_device *zdev)
{
 return kref_put(&zdev->refcount, zcrypt_device_release);
}
