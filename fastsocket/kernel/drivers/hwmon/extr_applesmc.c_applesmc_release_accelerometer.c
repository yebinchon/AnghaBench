
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int accelerometer_attributes_group ;
 int applesmc_idev ;
 int input_free_polled_device (int ) ;
 int input_unregister_polled_device (int ) ;
 TYPE_2__* pdev ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void applesmc_release_accelerometer(void)
{
 input_unregister_polled_device(applesmc_idev);
 input_free_polled_device(applesmc_idev);
 sysfs_remove_group(&pdev->dev.kobj, &accelerometer_attributes_group);
}
