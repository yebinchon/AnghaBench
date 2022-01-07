
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long consider_steal_time (unsigned long) ;
 int ia64_get_itc () ;
 scalar_t__ time_after (unsigned long,int ) ;

__attribute__((used)) static int xen_do_steal_accounting(unsigned long *new_itm)
{
 unsigned long delta_itm;
 delta_itm = consider_steal_time(*new_itm);
 *new_itm += delta_itm;
 if (time_after(*new_itm, ia64_get_itc()) && delta_itm)
  return 1;

 return 0;
}
