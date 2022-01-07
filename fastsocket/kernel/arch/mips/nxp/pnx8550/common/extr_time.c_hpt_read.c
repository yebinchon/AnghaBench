
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int read_c0_count2 () ;

__attribute__((used)) static cycle_t hpt_read(struct clocksource *cs)
{
 return read_c0_count2();
}
