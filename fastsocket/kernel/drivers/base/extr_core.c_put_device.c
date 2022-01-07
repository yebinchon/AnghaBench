
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int kobject_put (int *) ;

void put_device(struct device *dev)
{

 if (dev)
  kobject_put(&dev->kobj);
}
