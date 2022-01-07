
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lgr_info_log () ;
 int lgr_timer_set () ;

__attribute__((used)) static void lgr_timer_fn(unsigned long ignored)
{
 lgr_info_log();
 lgr_timer_set();
}
