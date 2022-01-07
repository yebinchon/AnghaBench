
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int RTC_COUNTER_ADDR ;
 int readq (int ) ;

__attribute__((used)) static cycle_t read_sn2(struct clocksource *cs)
{
 return (cycle_t)readq(RTC_COUNTER_ADDR);
}
