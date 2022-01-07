
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct op_msrs {TYPE_1__* controls; } ;
struct TYPE_2__ {int addr; } ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 int num_counters ;
 int rdmsrl (int ,int ) ;
 scalar_t__* reset_value ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void ppro_start(struct op_msrs const * const msrs)
{
 u64 val;
 int i;

 if (!reset_value)
  return;
 for (i = 0; i < num_counters; ++i) {
  if (reset_value[i]) {
   rdmsrl(msrs->controls[i].addr, val);
   val |= ARCH_PERFMON_EVENTSEL_ENABLE;
   wrmsrl(msrs->controls[i].addr, val);
  }
 }
}
