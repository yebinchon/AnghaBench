
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_cpu {int hrt; } ;
typedef int ktime_t ;


 int HRTIMER_MODE_ABS ;
 int hrtimer_cancel (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_add_ns (int ,unsigned long) ;
 int ktime_get_real () ;
 scalar_t__ unlikely (int) ;

void guest_set_clockevent(struct lg_cpu *cpu, unsigned long delta)
{
 ktime_t expires;

 if (unlikely(delta == 0)) {

  hrtimer_cancel(&cpu->hrt);
  return;
 }






 expires = ktime_add_ns(ktime_get_real(), delta);
 hrtimer_start(&cpu->hrt, expires, HRTIMER_MODE_ABS);
}
