
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int present; } ;
struct cdrom_device_info {struct pcd_unit* handle; } ;


 int ENODEV ;

__attribute__((used)) static int pcd_open(struct cdrom_device_info *cdi, int purpose)
{
 struct pcd_unit *cd = cdi->handle;
 if (!cd->present)
  return -ENODEV;
 return 0;
}
