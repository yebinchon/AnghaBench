
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int changed; } ;
struct cdrom_device_info {struct pcd_unit* handle; } ;



__attribute__((used)) static int pcd_media_changed(struct cdrom_device_info *cdi, int slot_nr)
{
 struct pcd_unit *cd = cdi->handle;
 int res = cd->changed;
 if (res)
  cd->changed = 0;
 return res;
}
