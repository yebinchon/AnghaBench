
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 TYPE_1__* INTEL_INFO (struct drm_device*) ;

__attribute__((used)) static int intel_bios_ssc_frequency(struct drm_device *dev,
        bool alternate)
{
 switch (INTEL_INFO(dev)->gen) {
 case 2:
  return alternate ? 66 : 48;
 case 3:
 case 4:
  return alternate ? 100 : 96;
 default:
  return alternate ? 100 : 120;
 }
}
