
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int handle; } ;


 int pcd_atapi (int ,char*,int ,int ,char*) ;
 int pcd_scratch ;

__attribute__((used)) static int pcd_lock_door(struct cdrom_device_info *cdi, int lock)
{
 char un_cmd[12] = { 0x1e, 0, 0, 0, lock, 0, 0, 0, 0, 0, 0, 0 };

 return pcd_atapi(cdi->handle, un_cmd, 0, pcd_scratch,
    lock ? "lock door" : "unlock door");
}
