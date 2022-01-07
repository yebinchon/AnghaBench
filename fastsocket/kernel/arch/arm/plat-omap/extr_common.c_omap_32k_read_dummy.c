
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;



__attribute__((used)) static cycle_t omap_32k_read_dummy(struct clocksource *cs)
{
 return 0;
}
