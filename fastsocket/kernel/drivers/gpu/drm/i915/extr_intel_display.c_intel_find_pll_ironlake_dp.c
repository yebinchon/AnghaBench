
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef int intel_limit_t ;
struct TYPE_7__ {int n; int p1; int p2; int m1; int m2; } ;
typedef TYPE_1__ intel_clock_t ;


 int intel_clock (struct drm_device*,int,TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static bool
intel_find_pll_ironlake_dp(const intel_limit_t *limit, struct drm_crtc *crtc,
      int target, int refclk, intel_clock_t *match_clock,
      intel_clock_t *best_clock)
{
 struct drm_device *dev = crtc->dev;
 intel_clock_t clock;

 if (target < 200000) {
  clock.n = 1;
  clock.p1 = 2;
  clock.p2 = 10;
  clock.m1 = 12;
  clock.m2 = 9;
 } else {
  clock.n = 2;
  clock.p1 = 1;
  clock.p2 = 10;
  clock.m1 = 14;
  clock.m2 = 8;
 }
 intel_clock(dev, refclk, &clock);
 memcpy(best_clock, &clock, sizeof(intel_clock_t));
 return 1;
}
