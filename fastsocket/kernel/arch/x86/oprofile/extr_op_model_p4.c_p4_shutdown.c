
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct op_msrs {TYPE_2__* controls; TYPE_1__* counters; } ;
struct TYPE_4__ {scalar_t__ addr; } ;
struct TYPE_3__ {scalar_t__ addr; } ;


 int num_controls ;
 int num_counters ;
 int release_evntsel_nmi (scalar_t__) ;
 int release_perfctr_nmi (scalar_t__) ;

__attribute__((used)) static void p4_shutdown(struct op_msrs const * const msrs)
{
 int i;

 for (i = 0; i < num_counters; ++i) {
  if (msrs->counters[i].addr)
   release_perfctr_nmi(msrs->counters[i].addr);
 }





 for (i = num_counters; i < num_controls; ++i) {
  if (msrs->controls[i].addr)
   release_evntsel_nmi(msrs->controls[i].addr);
 }
}
