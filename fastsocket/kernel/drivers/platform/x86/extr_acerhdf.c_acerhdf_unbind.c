
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct thermal_cooling_device {int dummy; } ;


 int EINVAL ;
 struct thermal_cooling_device* cl_dev ;
 int pr_err (char*) ;
 scalar_t__ thermal_zone_unbind_cooling_device (struct thermal_zone_device*,int ,struct thermal_cooling_device*) ;

__attribute__((used)) static int acerhdf_unbind(struct thermal_zone_device *thermal,
     struct thermal_cooling_device *cdev)
{
 if (cdev != cl_dev)
  return 0;

 if (thermal_zone_unbind_cooling_device(thermal, 0, cdev)) {
  pr_err("error unbinding cooling dev\n");
  return -EINVAL;
 }
 return 0;
}
