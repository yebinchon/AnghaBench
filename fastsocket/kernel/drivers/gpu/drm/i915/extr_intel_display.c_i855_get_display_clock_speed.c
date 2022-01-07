
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drm_device {int dummy; } ;






 int GC_CLOCK_CONTROL_MASK ;

__attribute__((used)) static int i855_get_display_clock_speed(struct drm_device *dev)
{
 u16 hpllcc = 0;



 switch (hpllcc & GC_CLOCK_CONTROL_MASK) {
 case 129:
 case 130:
  return 200000;
 case 128:
  return 250000;
 case 131:
  return 133000;
 }


 return 0;
}
