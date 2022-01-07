
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int drive_info_struct ;


 int kfree (int *) ;
 int * to_drv (struct device*) ;

__attribute__((used)) static void cciss_device_release(struct device *dev)
{
 drive_info_struct *drv = to_drv(dev);
 kfree(drv);
}
