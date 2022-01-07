
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enclosure_device {TYPE_1__* cb; } ;
struct enclosure_component {int active; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_active ) (struct enclosure_device*,struct enclosure_component*) ;} ;


 int snprintf (char*,int,char*,int) ;
 int stub1 (struct enclosure_device*,struct enclosure_component*) ;
 struct enclosure_component* to_enclosure_component (struct device*) ;
 struct enclosure_device* to_enclosure_device (int ) ;

__attribute__((used)) static ssize_t get_component_active(struct device *cdev,
        struct device_attribute *attr, char *buf)
{
 struct enclosure_device *edev = to_enclosure_device(cdev->parent);
 struct enclosure_component *ecomp = to_enclosure_component(cdev);

 if (edev->cb->get_active)
  edev->cb->get_active(edev, ecomp);
 return snprintf(buf, 40, "%d\n", ecomp->active);
}
