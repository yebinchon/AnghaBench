
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_for_each_child (struct device*,int *,int ) ;
 int mfd_remove_devices_fn ;

void mfd_remove_devices(struct device *parent)
{
 device_for_each_child(parent, ((void*)0), mfd_remove_devices_fn);
}
