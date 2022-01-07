
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_4__ {int m; int m1; int m2; int p; int p1; int p2; int vco; int n; int dot; } ;
typedef TYPE_1__ intel_clock_t ;


 scalar_t__ IS_PINEVIEW (struct drm_device*) ;
 int pineview_clock (int,TYPE_1__*) ;

__attribute__((used)) static void intel_clock(struct drm_device *dev, int refclk, intel_clock_t *clock)
{
 if (IS_PINEVIEW(dev)) {
  pineview_clock(refclk, clock);
  return;
 }
 clock->m = 5 * (clock->m1 + 2) + (clock->m2 + 2);
 clock->p = clock->p1 * clock->p2;
 clock->vco = refclk * clock->m / (clock->n + 2);
 clock->dot = clock->vco / clock->p;
}
