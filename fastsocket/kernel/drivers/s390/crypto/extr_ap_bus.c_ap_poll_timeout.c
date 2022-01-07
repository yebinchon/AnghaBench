
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_NORESTART ;
 int ap_tasklet ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static enum hrtimer_restart ap_poll_timeout(struct hrtimer *unused)
{
 tasklet_schedule(&ap_tasklet);
 return HRTIMER_NORESTART;
}
