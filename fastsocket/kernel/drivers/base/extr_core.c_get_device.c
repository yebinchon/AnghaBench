
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int kobject_get (int *) ;
 struct device* to_dev (int ) ;

struct device *get_device(struct device *dev)
{
 return dev ? to_dev(kobject_get(&dev->kobj)) : ((void*)0);
}
