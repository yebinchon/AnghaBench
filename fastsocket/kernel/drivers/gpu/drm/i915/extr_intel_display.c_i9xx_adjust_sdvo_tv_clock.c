
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_display_mode {int clock; } ;
struct TYPE_3__ {int p1; int p2; int n; int m1; int m2; } ;
typedef TYPE_1__ intel_clock_t ;



__attribute__((used)) static void i9xx_adjust_sdvo_tv_clock(struct drm_display_mode *adjusted_mode,
          intel_clock_t *clock)
{


 if (adjusted_mode->clock >= 100000
     && adjusted_mode->clock < 140500) {
  clock->p1 = 2;
  clock->p2 = 10;
  clock->n = 3;
  clock->m1 = 16;
  clock->m2 = 8;
 } else if (adjusted_mode->clock >= 140500
     && adjusted_mode->clock <= 200000) {
  clock->p1 = 1;
  clock->p2 = 10;
  clock->n = 6;
  clock->m1 = 12;
  clock->m2 = 8;
 }
}
