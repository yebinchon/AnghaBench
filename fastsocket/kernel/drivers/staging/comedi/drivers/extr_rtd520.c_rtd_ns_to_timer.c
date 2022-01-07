
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTD_CLOCK_BASE ;
 int rtd_ns_to_timer_base (unsigned int*,int,int ) ;

__attribute__((used)) static int rtd_ns_to_timer(unsigned int *ns, int round_mode)
{
 return rtd_ns_to_timer_base(ns, round_mode, RTD_CLOCK_BASE);
}
