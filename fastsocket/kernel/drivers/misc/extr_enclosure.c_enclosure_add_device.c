
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_device {int components; struct enclosure_component* component; } ;
struct enclosure_component {struct device* dev; } ;
struct device {int dummy; } ;


 int EEXIST ;
 int EINVAL ;
 int enclosure_add_links (struct enclosure_component*) ;
 int enclosure_remove_links (struct enclosure_component*) ;
 struct device* get_device (struct device*) ;
 int put_device (struct device*) ;

int enclosure_add_device(struct enclosure_device *edev, int component,
    struct device *dev)
{
 struct enclosure_component *cdev;

 if (!edev || component >= edev->components)
  return -EINVAL;

 cdev = &edev->component[component];

 if (cdev->dev == dev)
  return -EEXIST;

 if (cdev->dev)
  enclosure_remove_links(cdev);

 put_device(cdev->dev);
 cdev->dev = get_device(dev);
 return enclosure_add_links(cdev);
}
