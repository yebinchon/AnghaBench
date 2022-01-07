
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m; int m2; int p; int p1; int p2; int vco; int n; int dot; } ;
typedef TYPE_1__ intel_clock_t ;



__attribute__((used)) static void pineview_clock(int refclk, intel_clock_t *clock)
{
 clock->m = clock->m2 + 2;
 clock->p = clock->p1 * clock->p2;
 clock->vco = refclk * clock->m / clock->n;
 clock->dot = clock->vco / clock->p;
}
