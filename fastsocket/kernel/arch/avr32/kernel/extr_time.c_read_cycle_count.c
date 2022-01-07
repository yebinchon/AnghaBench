
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int COUNT ;
 int sysreg_read (int ) ;

__attribute__((used)) static cycle_t read_cycle_count(struct clocksource *cs)
{
 return (cycle_t)sysreg_read(COUNT);
}
