
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct ubi_device {scalar_t__ ref_count; int dev; TYPE_1__ cdev; } ;


 int MAJOR (int ) ;
 int UBI_MAX_DEVICES ;
 int get_device (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;
 struct ubi_device** ubi_devices ;
 int ubi_devices_lock ;

struct ubi_device *ubi_get_by_major(int major)
{
 int i;
 struct ubi_device *ubi;

 spin_lock(&ubi_devices_lock);
 for (i = 0; i < UBI_MAX_DEVICES; i++) {
  ubi = ubi_devices[i];
  if (ubi && MAJOR(ubi->cdev.dev) == major) {
   ubi_assert(ubi->ref_count >= 0);
   ubi->ref_count += 1;
   get_device(&ubi->dev);
   spin_unlock(&ubi_devices_lock);
   return ubi;
  }
 }
 spin_unlock(&ubi_devices_lock);

 return ((void*)0);
}
