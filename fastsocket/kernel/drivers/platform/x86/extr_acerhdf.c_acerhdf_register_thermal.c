
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int acerhdf_cooling_ops ;
 int acerhdf_dev_ops ;
 int cl_dev ;
 int interval ;
 scalar_t__ kernelmode ;
 int thermal_cooling_device_register (char*,int *,int *) ;
 int thermal_zone_device_register (char*,int,int *,int *,int ,int ,int ,int) ;
 int thz_dev ;

__attribute__((used)) static int acerhdf_register_thermal(void)
{
 cl_dev = thermal_cooling_device_register("acerhdf-fan", ((void*)0),
       &acerhdf_cooling_ops);

 if (IS_ERR(cl_dev))
  return -EINVAL;

 thz_dev = thermal_zone_device_register("acerhdf", 1, ((void*)0),
           &acerhdf_dev_ops, 0, 0, 0,
           (kernelmode) ? interval*1000 : 0);
 if (IS_ERR(thz_dev))
  return -EINVAL;

 return 0;
}
