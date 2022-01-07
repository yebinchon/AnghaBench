
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_guest_switch_msr {int dummy; } ;
struct TYPE_2__ {struct perf_guest_switch_msr* (* guest_get_msrs ) (int*) ;} ;


 struct perf_guest_switch_msr* stub1 (int*) ;
 TYPE_1__ x86_pmu ;

struct perf_guest_switch_msr *perf_guest_get_msrs(int *nr)
{
 if (x86_pmu.guest_get_msrs)
  return x86_pmu.guest_get_msrs(nr);
 *nr = 0;
 return ((void*)0);
}
