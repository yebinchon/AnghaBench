
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acerhdf_dev ;
 int acerhdf_driver ;
 int platform_device_del (int ) ;
 int platform_driver_unregister (int *) ;

__attribute__((used)) static void acerhdf_unregister_platform(void)
{
 if (!acerhdf_dev)
  return;

 platform_device_del(acerhdf_dev);
 platform_driver_unregister(&acerhdf_driver);
}
