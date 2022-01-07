
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject* parent; } ;
struct device {TYPE_1__ kobj; } ;


 struct kobject* get_device_parent (struct device*,struct device*) ;

__attribute__((used)) static void setup_parent(struct device *dev, struct device *parent)
{
 struct kobject *kobj;
 kobj = get_device_parent(dev, parent);
 if (kobj)
  dev->kobj.parent = kobj;
}
