
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acerhdf_dev ;
 int acerhdf_driver ;
 int platform_device_add (int ) ;
 int platform_device_alloc (char*,int) ;
 int platform_driver_register (int *) ;

__attribute__((used)) static int acerhdf_register_platform(void)
{
 int err = 0;

 err = platform_driver_register(&acerhdf_driver);
 if (err)
  return err;

 acerhdf_dev = platform_device_alloc("acerhdf", -1);
 platform_device_add(acerhdf_dev);

 return 0;
}
