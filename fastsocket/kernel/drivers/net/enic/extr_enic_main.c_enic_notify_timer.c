
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int notify_timer; } ;


 scalar_t__ ENIC_NOTIFY_TIMER_PERIOD ;
 int enic_notify_check (struct enic*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;

__attribute__((used)) static void enic_notify_timer(unsigned long data)
{
 struct enic *enic = (struct enic *)data;

 enic_notify_check(enic);

 mod_timer(&enic->notify_timer,
  round_jiffies(jiffies + ENIC_NOTIFY_TIMER_PERIOD));
}
