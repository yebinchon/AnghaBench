
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct op_msrs {TYPE_2__* counters; TYPE_1__* controls; } ;
struct TYPE_6__ {int enabled; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_4__ {scalar_t__ addr; } ;


 int EBUSY ;
 scalar_t__ MSR_F15H_PERF_CTL ;
 scalar_t__ MSR_F15H_PERF_CTR ;
 scalar_t__ MSR_K7_EVNTSEL0 ;
 scalar_t__ MSR_K7_PERFCTR0 ;
 int NUM_COUNTERS_F15H ;
 TYPE_3__* counter_config ;
 int num_counters ;
 int op_amd_shutdown (struct op_msrs* const) ;
 int op_x86_warn_reserved (int) ;
 int release_perfctr_nmi (scalar_t__) ;
 int reserve_evntsel_nmi (scalar_t__) ;
 int reserve_perfctr_nmi (scalar_t__) ;

__attribute__((used)) static int op_amd_fill_in_addresses(struct op_msrs * const msrs)
{
 int i;

 for (i = 0; i < num_counters; i++) {
  if (!reserve_perfctr_nmi(MSR_K7_PERFCTR0 + i))
   goto fail;
  if (!reserve_evntsel_nmi(MSR_K7_EVNTSEL0 + i)) {
   release_perfctr_nmi(MSR_K7_PERFCTR0 + i);
   goto fail;
  }

  if (num_counters == NUM_COUNTERS_F15H) {
   msrs->counters[i].addr = MSR_F15H_PERF_CTR + (i << 1);
   msrs->controls[i].addr = MSR_F15H_PERF_CTL + (i << 1);
  } else {
   msrs->controls[i].addr = MSR_K7_EVNTSEL0 + i;
   msrs->counters[i].addr = MSR_K7_PERFCTR0 + i;
  }
  continue;
 fail:
  if (!counter_config[i].enabled)
   continue;
  op_x86_warn_reserved(i);
  op_amd_shutdown(msrs);
  return -EBUSY;
 }

 return 0;
}
