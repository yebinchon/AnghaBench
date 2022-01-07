
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_device {int refcount; } ;


 int kref_get (int *) ;

void zcrypt_device_get(struct zcrypt_device *zdev)
{
 kref_get(&zdev->refcount);
}
