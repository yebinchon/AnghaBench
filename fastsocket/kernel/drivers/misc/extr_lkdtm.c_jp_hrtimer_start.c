
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef int ktime_t ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;


 int jprobe_return () ;
 int lkdtm_handler () ;

__attribute__((used)) static int jp_hrtimer_start(struct hrtimer *timer, ktime_t tim,
       const enum hrtimer_mode mode)
{
 lkdtm_handler();
 jprobe_return();
 return 0;
}
