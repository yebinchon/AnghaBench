
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int OSCR ;

__attribute__((used)) static cycle_t sa1100_read_oscr(struct clocksource *s)
{
 return OSCR;
}
