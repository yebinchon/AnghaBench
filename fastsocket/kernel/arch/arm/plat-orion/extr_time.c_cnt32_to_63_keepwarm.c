
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cnt32_to_63_keepwarm_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;
 int sched_clock () ;

__attribute__((used)) static void cnt32_to_63_keepwarm(unsigned long data)
{
 mod_timer(&cnt32_to_63_keepwarm_timer, round_jiffies(jiffies + data));
 (void) sched_clock();
}
