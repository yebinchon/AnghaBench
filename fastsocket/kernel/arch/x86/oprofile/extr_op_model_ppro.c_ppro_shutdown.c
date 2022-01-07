
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct op_msrs {TYPE_1__* counters; } ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ MSR_P6_EVNTSEL0 ;
 scalar_t__ MSR_P6_PERFCTR0 ;
 int kfree (int *) ;
 int num_counters ;
 int release_evntsel_nmi (scalar_t__) ;
 int release_perfctr_nmi (scalar_t__) ;
 int * reset_value ;

__attribute__((used)) static void ppro_shutdown(struct op_msrs const * const msrs)
{
 int i;

 for (i = 0; i < num_counters; ++i) {
  if (!msrs->counters[i].addr)
   continue;
  release_perfctr_nmi(MSR_P6_PERFCTR0 + i);
  release_evntsel_nmi(MSR_P6_EVNTSEL0 + i);
 }
 if (reset_value) {
  kfree(reset_value);
  reset_value = ((void*)0);
 }
}
