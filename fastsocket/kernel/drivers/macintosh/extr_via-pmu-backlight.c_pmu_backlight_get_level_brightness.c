
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FB_BACKLIGHT_MAX ;
 int MAX_PMU_LEVEL ;
 int* bl_curve ;

__attribute__((used)) static int pmu_backlight_get_level_brightness(int level)
{
 int pmulevel;


 pmulevel = bl_curve[level] * FB_BACKLIGHT_MAX / MAX_PMU_LEVEL;
 if (pmulevel < 0)
  pmulevel = 0;
 else if (pmulevel > MAX_PMU_LEVEL)
  pmulevel = MAX_PMU_LEVEL;

 return pmulevel;
}
