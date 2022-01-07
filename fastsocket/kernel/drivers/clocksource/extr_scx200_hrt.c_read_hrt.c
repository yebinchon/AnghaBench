
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 scalar_t__ SCx200_TIMER_OFFSET ;
 int inl (scalar_t__) ;
 scalar_t__ scx200_cb_base ;

__attribute__((used)) static cycle_t read_hrt(struct clocksource *cs)
{

 return (cycle_t) inl(scx200_cb_base + SCx200_TIMER_OFFSET);
}
