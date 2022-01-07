
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int da903x_battery_driver ;
 int platform_driver_register (int *) ;

__attribute__((used)) static int da903x_battery_init(void)
{
 return platform_driver_register(&da903x_battery_driver);
}
