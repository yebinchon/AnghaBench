
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HZ ;
 int hil_mlcs_kicker ;
 int hil_mlcs_probe ;
 int hil_mlcs_tasklet ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int tasklet_schedule (int *) ;
 int timer_pending (int *) ;

__attribute__((used)) static void hil_mlcs_timer(unsigned long data)
{
 hil_mlcs_probe = 1;
 tasklet_schedule(&hil_mlcs_tasklet);

 if (!timer_pending(&hil_mlcs_kicker))
  mod_timer(&hil_mlcs_kicker, jiffies + HZ);
}
