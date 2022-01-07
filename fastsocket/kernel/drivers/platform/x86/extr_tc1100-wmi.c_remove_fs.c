
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int dev_attr_jogdial ;
 int dev_attr_wireless ;
 int device_remove_file (int *,int *) ;
 TYPE_1__* tc1100_device ;

__attribute__((used)) static void remove_fs(void)
{
 device_remove_file(&tc1100_device->dev, &dev_attr_wireless);
 device_remove_file(&tc1100_device->dev, &dev_attr_jogdial);
}
