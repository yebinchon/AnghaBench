
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viodasd_device {int * disk; } ;
struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t MAX_DISKNO ;
 int probe_disk (struct viodasd_device*) ;
 struct viodasd_device* viodasd_devices ;

__attribute__((used)) static ssize_t probe_disks(struct device_driver *drv, const char *buf,
  size_t count)
{
 struct viodasd_device *d;

 for (d = viodasd_devices; d < &viodasd_devices[MAX_DISKNO]; d++) {
  if (d->disk == ((void*)0))
   probe_disk(d);
 }
 return count;
}
