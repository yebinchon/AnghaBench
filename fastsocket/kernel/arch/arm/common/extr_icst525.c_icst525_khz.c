
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icst525_vco {int v; int r; size_t s; } ;
struct icst525_params {int ref; } ;


 int* s2div ;

unsigned long icst525_khz(const struct icst525_params *p, struct icst525_vco vco)
{
 return p->ref * 2 * (vco.v + 8) / ((vco.r + 2) * s2div[vco.s]);
}
