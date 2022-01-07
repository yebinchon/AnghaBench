
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int os_nsecs () ;

__attribute__((used)) static cycle_t itimer_read(struct clocksource *cs)
{
 return os_nsecs() / 1000;
}
