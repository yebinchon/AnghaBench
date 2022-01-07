
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {scalar_t__ ref_count; int dev; } ;


 int get_device (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;
 struct ubi_device** ubi_devices ;
 int ubi_devices_lock ;

struct ubi_device *ubi_get_device(int ubi_num)
{
 struct ubi_device *ubi;

 spin_lock(&ubi_devices_lock);
 ubi = ubi_devices[ubi_num];
 if (ubi) {
  ubi_assert(ubi->ref_count >= 0);
  ubi->ref_count += 1;
  get_device(&ubi->dev);
 }
 spin_unlock(&ubi_devices_lock);

 return ubi;
}
