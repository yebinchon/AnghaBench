
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int config_base; int config; } ;






 int EINVAL ;
 int EOPNOTSUPP ;

__attribute__((used)) static int validate_event(const struct hw_perf_event *hwc)
{
 switch (hwc->config_base) {
 case 131:
 case 128:
 case 130:
 case 129:

  if ((hwc->config >= 6 && hwc->config <= 31) ||
      (hwc->config >= 38 && hwc->config <= 63) ||
      (hwc->config >= 80 && hwc->config <= 127))
   return -EOPNOTSUPP;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
