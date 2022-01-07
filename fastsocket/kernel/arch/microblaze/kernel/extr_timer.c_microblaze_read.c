
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 scalar_t__ TCR1 ;
 scalar_t__ TIMER_BASE ;
 int in_be32 (scalar_t__) ;

__attribute__((used)) static cycle_t microblaze_read(struct clocksource *cs)
{

 return (cycle_t) (in_be32(TIMER_BASE + TCR1));
}
