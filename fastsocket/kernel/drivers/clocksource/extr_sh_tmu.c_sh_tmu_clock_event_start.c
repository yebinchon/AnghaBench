
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int shift; int min_delta_ns; int max_delta_ns; int mult; } ;
struct sh_tmu_priv {int rate; int periodic; struct clock_event_device ced; } ;


 int HZ ;
 int NSEC_PER_SEC ;
 int clockevent_delta2ns (int,struct clock_event_device*) ;
 int div_sc (int,int ,int) ;
 int sh_tmu_enable (struct sh_tmu_priv*) ;
 int sh_tmu_set_next (struct sh_tmu_priv*,int,int) ;

__attribute__((used)) static void sh_tmu_clock_event_start(struct sh_tmu_priv *p, int periodic)
{
 struct clock_event_device *ced = &p->ced;

 sh_tmu_enable(p);



 ced->shift = 32;
 ced->mult = div_sc(p->rate, NSEC_PER_SEC, ced->shift);
 ced->max_delta_ns = clockevent_delta2ns(0xffffffff, ced);
 ced->min_delta_ns = 5000;

 if (periodic) {
  p->periodic = (p->rate + HZ/2) / HZ;
  sh_tmu_set_next(p, p->periodic, 1);
 }
}
