
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_stats ;
 int device_remove_file (struct device*,int *) ;

void ctcm_remove_attributes(struct device *dev)
{
 device_remove_file(dev, &dev_attr_stats);
}
