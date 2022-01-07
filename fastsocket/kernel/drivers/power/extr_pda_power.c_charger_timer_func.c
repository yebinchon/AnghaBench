
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int psy_changed () ;
 int update_status () ;

__attribute__((used)) static void charger_timer_func(unsigned long unused)
{
 update_status();
 psy_changed();
}
