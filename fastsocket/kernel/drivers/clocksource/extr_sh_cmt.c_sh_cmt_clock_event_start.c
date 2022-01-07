
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int shift; void* min_delta_ns; void* max_delta_ns; int mult; } ;
struct sh_cmt_priv {int rate; int max_match_value; struct clock_event_device ced; } ;


 int FLAG_CLOCKEVENT ;
 int HZ ;
 int NSEC_PER_SEC ;
 void* clockevent_delta2ns (int,struct clock_event_device*) ;
 int div_sc (int,int ,int) ;
 int sh_cmt_set_next (struct sh_cmt_priv*,int) ;
 int sh_cmt_start (struct sh_cmt_priv*,int ) ;

__attribute__((used)) static void sh_cmt_clock_event_start(struct sh_cmt_priv *p, int periodic)
{
 struct clock_event_device *ced = &p->ced;

 sh_cmt_start(p, FLAG_CLOCKEVENT);



 ced->shift = 32;
 ced->mult = div_sc(p->rate, NSEC_PER_SEC, ced->shift);
 ced->max_delta_ns = clockevent_delta2ns(p->max_match_value, ced);
 ced->min_delta_ns = clockevent_delta2ns(0x1f, ced);

 if (periodic)
  sh_cmt_set_next(p, (p->rate + HZ/2) / HZ);
 else
  sh_cmt_set_next(p, p->max_match_value);
}
