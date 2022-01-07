
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ complete; } ;


 int LEVEL_TO_BRIGHT (int) ;
 int PMU_BACKLIGHT_BRIGHT ;
 int PMU_POWER_CTRL ;
 int PMU_POW_BACKLIGHT ;
 int PMU_POW_OFF ;
 int PMU_POW_ON ;
 int backlight_enabled ;
 int backlight_level ;
 TYPE_1__ bright_req_1 ;
 TYPE_1__ bright_req_2 ;
 int pmu_request (TYPE_1__*,int *,int,int ,int) ;

__attribute__((used)) static void
pmu_set_brightness(int level)
{
 int bright;

 backlight_level = level;
 bright = LEVEL_TO_BRIGHT(level);
 if (!backlight_enabled)
  return;
 if (bright_req_1.complete)
  pmu_request(&bright_req_1, ((void*)0), 2, PMU_BACKLIGHT_BRIGHT,
      bright);
 if (bright_req_2.complete)
  pmu_request(&bright_req_2, ((void*)0), 2, PMU_POWER_CTRL,
      PMU_POW_BACKLIGHT | (bright < 0x7f ? PMU_POW_ON : PMU_POW_OFF));
}
