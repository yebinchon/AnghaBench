
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_device {int components; struct enclosure_component* component; } ;
struct enclosure_component {int cdev; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int device_add (int *) ;
 int device_del (int *) ;
 int enclosure_remove_links (struct enclosure_component*) ;
 int put_device (struct device*) ;

int enclosure_remove_device(struct enclosure_device *edev, struct device *dev)
{
 struct enclosure_component *cdev;
 int i;

 if (!edev || !dev)
  return -EINVAL;

 for (i = 0; i < edev->components; i++) {
  cdev = &edev->component[i];
  if (cdev->dev == dev) {
   enclosure_remove_links(cdev);
   device_del(&cdev->cdev);
   put_device(dev);
   cdev->dev = ((void*)0);
   return device_add(&cdev->cdev);
  }
 }
 return -ENODEV;
}
