
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct drm_crtc {int dummy; } ;
typedef int intel_limit_t ;
struct TYPE_6__ {int p1; int p2; int n; int m1; int m2; int m; int p; int dot; scalar_t__ vco; } ;
typedef TYPE_1__ intel_clock_t ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static bool
intel_find_pll_g4x_dp(const intel_limit_t *limit, struct drm_crtc *crtc,
        int target, int refclk, intel_clock_t *match_clock,
        intel_clock_t *best_clock)
{
 intel_clock_t clock;
 if (target < 200000) {
  clock.p1 = 2;
  clock.p2 = 10;
  clock.n = 2;
  clock.m1 = 23;
  clock.m2 = 8;
 } else {
  clock.p1 = 1;
  clock.p2 = 10;
  clock.n = 1;
  clock.m1 = 14;
  clock.m2 = 2;
 }
 clock.m = 5 * (clock.m1 + 2) + (clock.m2 + 2);
 clock.p = (clock.p1 * clock.p2);
 clock.dot = 96000 * clock.m / (clock.n + 2) / clock.p;
 clock.vco = 0;
 memcpy(best_clock, &clock, sizeof(intel_clock_t));
 return 1;
}
