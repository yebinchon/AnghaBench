
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int da903x_battery_driver ;
 int platform_driver_unregister (int *) ;

__attribute__((used)) static void da903x_battery_exit(void)
{
 platform_driver_unregister(&da903x_battery_driver);
}
