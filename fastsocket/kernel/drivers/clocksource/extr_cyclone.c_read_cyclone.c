
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int cyclone_ptr ;
 int readl (int ) ;

__attribute__((used)) static cycle_t read_cyclone(struct clocksource *cs)
{
 return (cycle_t)readl(cyclone_ptr);
}
