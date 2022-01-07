
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct urdev {int dummy; } ;
struct ccw_device {int dev; } ;


 struct ccw_device* get_ccwdev_by_busid (int *,char*) ;
 int put_device (int *) ;
 int sprintf (char*,char*,int) ;
 int ur_driver ;
 struct urdev* urdev_get_from_cdev (struct ccw_device*) ;

__attribute__((used)) static struct urdev *urdev_get_from_devno(u16 devno)
{
 char bus_id[16];
 struct ccw_device *cdev;
 struct urdev *urd;

 sprintf(bus_id, "0.0.%04x", devno);
 cdev = get_ccwdev_by_busid(&ur_driver, bus_id);
 if (!cdev)
  return ((void*)0);
 urd = urdev_get_from_cdev(cdev);
 put_device(&cdev->dev);
 return urd;
}
