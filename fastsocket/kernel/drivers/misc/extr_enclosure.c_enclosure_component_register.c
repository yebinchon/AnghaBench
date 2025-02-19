
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_device {unsigned int components; int edev; struct enclosure_component* component; } ;
struct device {int groups; int release; int parent; } ;
struct enclosure_component {int number; int type; struct device cdev; } ;
typedef enum enclosure_component_type { ____Placeholder_enclosure_component_type } enclosure_component_type ;


 int EINVAL ;
 struct enclosure_component* ERR_PTR (int) ;
 int dev_set_name (struct device*,char*,...) ;
 int device_register (struct device*) ;
 int enclosure_component_release ;
 int enclosure_groups ;
 int get_device (int *) ;
 int put_device (struct device*) ;

struct enclosure_component *
enclosure_component_register(struct enclosure_device *edev,
        unsigned int number,
        enum enclosure_component_type type,
        const char *name)
{
 struct enclosure_component *ecomp;
 struct device *cdev;
 int err;

 if (number >= edev->components)
  return ERR_PTR(-EINVAL);

 ecomp = &edev->component[number];

 if (ecomp->number != -1)
  return ERR_PTR(-EINVAL);

 ecomp->type = type;
 ecomp->number = number;
 cdev = &ecomp->cdev;
 cdev->parent = get_device(&edev->edev);
 if (name && name[0])
  dev_set_name(cdev, "%s", name);
 else
  dev_set_name(cdev, "%u", number);

 cdev->release = enclosure_component_release;
 cdev->groups = enclosure_groups;

 err = device_register(cdev);
 if (err) {
  ecomp->number = -1;
  put_device(cdev);
  return ERR_PTR(err);
 }

 return ecomp;
}
